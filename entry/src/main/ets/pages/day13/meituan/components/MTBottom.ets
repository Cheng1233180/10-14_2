import { FoodItem } from '../models/FoodItem'

@Component
export default struct MTBottom {
  @Consume
  showCart: boolean
  @StorageLink('cart_list')
  cartList:FoodItem[]=[]
  gerAllCount(){
    return this.cartList.reduce((preValue,item)=>preValue+item.count,0).toString()

  }
  getAllPrice(){
    return this.cartList.reduce((preValue,item)=>preValue+item.count*item.price,0).toFixed(2)
  }
  build() {
    Row() {
      Row() {
        Badge({
          value:'0',
          position:BadgePosition.Right,
          style:{badgeSize:18}
        }){
          Image($r('app.media.ic_public_cart'))
            .width(48)
            .height(70)
            .position({
              y:-20
            })
        }
        // .width(50)
        // .height(50)
        .margin({left:25,right:10})
        .onClick(()=>{
          this.showCart = !this.showCart
        })
        Column(){
          Text(){
            Span('￥')
              .fontSize(12)
              .fontColor('#fff')
            Span("0.00")
              .fontSize(24)
              .fontColor('#fff')
          }

          Text('预估另需配送费￥5元')
            .fontColor('#999')
            .fontSize(14)
        }
        .alignItems(HorizontalAlign.Start)
        .layoutWeight(1)
        Text('去结算')
          .height(50)
          .width(100)
          .backgroundColor($r('app.color.d'))
          // .alignSelf(ItemAlign.Stretch)
          .borderRadius({
            topRight:25,
            bottomRight:25
          })
          .textAlign(TextAlign.Center)
          // .padding(15)
      }
      .height(50)
      .backgroundColor($r('app.color.bottom_back'))
      .width('100%')
      .borderRadius(25)
    }
    .width('100%')
    // .padding({
    //   left:20,
    //   right:20,
    //   bottom:20
    // })
    .padding(20)
  }
}