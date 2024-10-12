import { Category } from '../models/Category'
import MTFoodItem from './MTFoodItem'
import { getData} from '../api/getAllData'
import { FoodItem } from '../models/FoodItem'

@Component
export default struct MTMain {

@Link
list:Category[]

  @State
  activeIndex:number=0



  build() {
    Row() {
    Column(){
      ForEach(this.list,(item:Category,index:number)=>{
        Text(item.name               )
          .height(50)
          .width('100%')
          .textAlign(TextAlign.Center)
          .fontSize(14)
          .backgroundColor(this.activeIndex===index?$r('app.color.white'):$r('app.color.left_back_color'))
          .onClick(()=>{
            this.activeIndex=index
          })
      })
    }
    .height('100%')
    .backgroundColor($r('app.color.left_back_color'))
    .width(90)
      List(){
      if (this.list.length>0){
        ForEach(this.list[this.activeIndex].foods,(food:FoodItem)=>{
          ListItem(){
            MTFoodItem({
              food:food
            })
          }
        })
      }else {
        ListItem(){
          Text('暂无商品')
            .width('100%')
            .padding(20)
            .textAlign(TextAlign.Center)
            .fontColor($r('app.color.left_back_color'))
        }
      }

      }
      .layoutWeight(1)
      .backgroundColor('#fff')
      .padding({bottom:80})

    }
    .layoutWeight(  1)
    .alignItems(VerticalAlign.Top)
    .width('100%')

  }

}

