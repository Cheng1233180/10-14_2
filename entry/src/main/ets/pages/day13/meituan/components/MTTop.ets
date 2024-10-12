

@Component
export default struct MTTop {

  @Builder
  NavItem(actice:boolean,title:string,subTitle?:string){
    Column(){
      Text(){
        Span(title)
        if (subTitle){
          Span(' '+subTitle)
            .fontSize(10)
            .fontColor(actice?$r('app.color.black'):$r('app.color.un_select_color'))

        }

      }
      .layoutWeight(1)
      .fontColor(actice?$r('app.color.black'):$r('app.color.un_select_color'))
      .fontWeight(actice?FontWeight.Bold:FontWeight.Normal)
      Text()
        .height(1)
        .width(20)
        .margin({left:6})
        .backgroundColor(actice?$r('app.color.select_border_color'):'transparent')

    }
    .width(73)
    .alignItems(HorizontalAlign.Start)
    .padding({top:3})
  }




  build() {
   Row(){
     this.NavItem(true,'点菜')
     this.NavItem(false,'评价','1796')
     this.NavItem(false,'尚家')
     Row(){
       Image($r('app.media.ic_public_search'))
         .width(14)
         .aspectRatio(1)
         .fillColor($r('app.color.search_font_color'))
       Text('输入菜名')
         .fontSize(12)
         .fontColor($r('app.color.search_back_color'))
     }
     .backgroundColor($r('app.color.search_back_color'))
     .height(25)
     .borderRadius(13)
     .padding({left:5,right:5})
     .layoutWeight(1)
   }
   .padding({left:15,right:15})
    .height(40)
    .border({width:{bottom:0.5},color:$r('app.color.top_border_color')})
  }
}