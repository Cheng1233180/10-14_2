import { lianxiren,liebiao } from './lianxiren'
import { promptAction, router } from '@kit.ArkUI'

@Entry
@Component
export  struct Fen2Page {

  contentList:lianxiren[]=[
    new liebiao({
      id:'1',
      name:'aaaa',
      icon:$r('app.media.dingzhen')
    })
    ,
    new liebiao({
      id:'2',
      name:'哇嘎哇嘎',
      icon:$r('app.media.dingzhen')
    })
    ,
    new liebiao({
      id:'3',
      name:'wa未发放',
      icon:$r('app.media.dingzhen')
    }),
    new liebiao({
      id:'4',
      name:'嘎嘎嘎',
      icon:$r('app.media.dingzhen')
    }),
    new liebiao({
      id:'5',
      name:'给他尬舞',
      icon:$r('app.media.dingzhen')
    }),
    new liebiao({
      id:'6',
      name:'挖法晚饭',
      icon:$r('app.media.dingzhen')
    }),
    new liebiao({
      id:'7',
      name:'啊我发给瓦工',
      icon:$r('app.media.dingzhen')
    }),
    new liebiao({
      id:'8',
      name:'解决啊我',
      icon:$r('app.media.dingzhen')
    }),
    new liebiao({
      id:'9',
      name:'哇嘎哇嘎',
      icon:$r('app.media.dingzhen')
    }),
    new liebiao({
      id:'10',
      name:'ii好好翻翻',
      icon:$r('app.media.dingzhen')
    }),
    new liebiao({
      id:'11',
      name:'抠抠搜搜',
      icon:$r('app.media.dingzhen')
    })
  ]


  @State
  content:string=''
  @State
  list:lianxiren[]=[]

  aboutToAppear(): void {
    this.list=this.contentList
  }

  searchUser(){
    const data=this.list.filter((item:lianxiren)=>{
      return item.name.includes(this.content)
    })
    this.list=data
    promptAction.showToast({
      message:JSON.stringify(data)
    })
  }


  build() {
   Column(){

     Column({space:40}){

       Text('联系人')
         .fontSize(20)
         .fontWeight(700)
         .textAlign(TextAlign.Center)


       Search({placeholder:"搜索",value:$$this.content})
         .onSubmit(()=>{
           this.searchUser()
         })
         .borderRadius(0)
         .width('90%')


     }
     .height('120')
     .width('100%')
     .backgroundColor('#CCCa')



     ForEach(this.list, (item: lianxiren)=>{
       Row({space:15}){
         Image(item.icon)
           .width(50)
           .aspectRatio(1)
           .borderRadius(15)
         Text(item.name)
           .fontSize(25)

       }
     .onClick(()=>{
       router.pushUrl({
         url: 'pages/Taking/take'
       })
     })
       .border({
         width:{bottom:1},
         color:'#CCC'

       })
       .padding(20)
       .width('100%')
     },(item: lianxiren) => item.name)


   }
   .layoutWeight(1)

  }
}