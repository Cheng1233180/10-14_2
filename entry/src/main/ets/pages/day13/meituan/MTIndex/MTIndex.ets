import MTBottom from '../components/MTBottom'
import MTMain from '../components/MTMain'
import MTTop from '../components/MTTop'
import { window } from '@kit.ArkUI';
import MTCart from '../components/MTCart';
import { getData } from '../api/getAllData';
import { Category } from '../models/Category';

@Entry
@Component
struct MTIndex {
@Provide showCart:boolean=false

  onPageShow(): void {
    window.getLastWindow(getContext(this), (err, data) => {
      if (!err.code) {
        data.setWindowLayoutFullScreen(true)
      }
    });
  }
  onBackPress(): boolean | void {
  this.showCart=false;
  }
  @State
  list :Category[]=[]
  async aboutToAppear() {
  this.list=await getData()
  }


  build() {
    Column() {
     Stack({alignContent:Alignment.Bottom}){
       Column(){
         MTTop()
         MTMain({
           list:this.list
         })
       }
       .height("100%")
       if (this.showCart) {
         MTCart()
       }
       MTBottom()
     }
     .layoutWeight(1)
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.b'))
  }
}