import { it } from '@ohos/hypium'

interface BiaoItem{
  title: string
  text: string
  img: ResourceStr
  author: string
  time: string
  like: string
}

@Preview
@Component
struct LieBiao {

  @State list : BiaoItem[] = [
    {
      title: '红小四家交为须更须身转花四圆生。',
      text: '改时快且值热委比度院基路系识七史改时快且值热委比度院基路系识七史',
      img: $r('app.media.111'),
      author: '作者',
      time: '1977年07月29日',
      like: '23403'
    },
    {
      title: '红小四家交为须更须身转花四圆生。',
      text: '改时快且值热委比度院基路系识七史改时快且值热委比度院基路系识七史',
      img: '',
      author: '作者',
      time: '1977年07月29日',
      like: '23403'
    },
    {
      title: '红小四家交为须更须身转花四圆生。',
      text: '改时快且值热委比度院基路系识七史改时快且值热委比度院基路系识七史',
      img: $r('app.media.222'),
      author: '作者',
      time: '1977年07月29日',
      like: '23403'
    },
    {
      title: '红小四家交为须更须身转花四圆生。',
      text: '改时快且值热委比度院基路系识七史改时快且值热委比度院基路系识七史',
      img: '',
      author: '作者',
      time: '1977年07月29日',
      like: '23403'
    },
    {
      title: '红小四家交为须更须身转花四圆生。',
      text: '改时快且值热委比度院基路系识七史改时快且值热委比度院基路系识七史',
      img: $r('app.media.333'),
      author: '作者',
      time: '1977年07月29日',
      like: '23403'
    },
    {
      title: '红小四家交为须更须身转花四圆生。',
      text: '改时快且值热委比度院基路系识七史改时快且值热委比度院基路系识七史',
      img: '',
      author: '作者',
      time: '1977年07月29日',
      like: '23403'
    },
    {
      title: '红小四家交为须更须身转花四圆生。',
      text: '改时快且值热委比度院基路系识七史改时快且值热委比度院基路系识七史',
      img: $r('app.media.444'),
      author: '作者',
      time: '1977年07月29日',
      like: '23403'
    },
    {
      title: '红小四家交为须更须身转花四圆生。',
      text: '改时快且值热委比度院基路系识七史改时快且值热委比度院基路系识七史',
      img: '',
      author: '作者',
      time: '1977年07月29日',
      like: '23403'
    },
    {
      title: '红小四家交为须更须身转花四圆生。',
      text: '改时快且值热委比度院基路系识七史改时快且值热委比度院基路系识七史',
      img: $r('app.media.555'),
      author: '作者',
      time: '1977年07月29日',
      like: '23403'
    },
    {
      title: '红小四家交为须更须身转花四圆生。',
      text: '改时快且值热委比度院基路系识七史改时快且值热委比度院基路系识七史',
      img: '',
      author: '作者',
      time: '1977年07月29日',
      like: '23403'
    },
  ]

  build() {
    Scroll(){
      Grid(){
        ForEach(this.list, (item: BiaoItem) =>{
          GridItem(){
            if (item.img != '') {
              Row(){
                Column(){
                  Row(){
                    Text(item.title)
                      .fontSize(18)
                      .fontWeight(700)
                  }
                  .width('100%')
                  Row(){
                    Text(item.text)
                      .maxLines(1)
                      .fontSize(14)
                      .fontWeight(400)
                      .fontColor('#8b8b8b')
                      .textOverflow({overflow: TextOverflow.Ellipsis})
                  }
                  .width('100%')
                  .margin({top:15})
                  Row(){
                    Text(item.author)
                      .fontSize(14)
                      .fontWeight(400)
                      .fontColor('#000')
                    Text('·'+item.time+'·'+item.like+'赞')
                      .fontSize(14)
                      .fontWeight(400)
                      .fontColor('#8b8b8b')
                  }
                  .width('100%')
                  .margin({top:15})
                }
                .width('60%')
                .margin({left:5,top:20})
                Image(item.img)
                  .width(120)
                  .height(80)
                  .borderRadius(5)
                  .margin({left:5})
              }
              .margin({bottom:10})
              .padding(10)
              .width('100%')
            }else {
              Row(){
                Column(){
                  Row(){
                    Text(item.title)
                      .fontSize(18)
                      .fontWeight(700)
                  }
                  .width('100%')
                  Row(){
                    Text(item.text)
                      .maxLines(1)
                      .fontSize(14)
                      .fontWeight(400)
                      .fontColor('#8b8b8b')
                      .textOverflow({overflow: TextOverflow.Ellipsis})
                  }
                  .width('100%')
                  .margin({top:15})
                  Row(){
                    Text(item.author)
                      .fontSize(14)
                      .fontWeight(400)
                      .fontColor('#000')
                    Text('·'+item.time+'·'+item.like+'赞')
                      .fontSize(14)
                      .fontWeight(400)
                      .fontColor('#8b8b8b')
                  }
                  .width('100%')
                  .margin({top:15})
                }
                .width('100%')
              }
              .padding(10)
              .width('100%')
              .margin({top:10,bottom:10})
            }
          }
          .border({width:{bottom:1},color:'#eee'})
        })
      }
      .width('100%')
      .columnsTemplate('1fr')
    }
    .height('100%')
    .padding({bottom: 50})
  }
}
export default LieBiao;