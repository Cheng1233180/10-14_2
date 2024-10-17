

export interface lianxiren {
  id:string
  name:string
  icon:ResourceStr

}

export  class liebiao implements lianxiren{
  id:string=''
  name:string=''
  icon: ResourceStr=''

  constructor(item: lianxiren){
    this.id=item.id
    this.name=item.name
    this.icon=item.icon
  }
}




