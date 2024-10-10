
import {http} from "@kit.NetworkKit"
import { promptAction } from '@kit.ArkUI';
import axios,{AxiosResponse }from'@ohos/axios'
@Entry
@Component
struct OnePage {
  @State message: string = 'Hello World';

 async  sendHttp(){
    const req=http.createHttp()
    const res= await req.request("https://zhousg.atomgit.net/harmonyos-next/takeaway.json")
   promptAction.showDialog({
     message: res.result as string
   })


  }

  async sendAxios(){
   const  service=axios.create({
     baseURL:"https://zhousg.atomgit.net/harmonyos-next",
     timeout:5000
   })


    const  res= await service.get<object,AxiosResponse<object,null>>("/takeaway.json")
    promptAction.showDialog({
      message:JSON.stringify(res)
    })

  }



  build() {
    Column(){
    Button('点击链接')
      .onClick(()=>{
        this.sendHttp()
      })

      Button('点击链接')
        .onClick(()=>{
          this.sendAxios()
        })


    }
    .height('100%')
    .width('100%')
  }
}