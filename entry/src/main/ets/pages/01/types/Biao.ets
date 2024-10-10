export interface BiaoItem{
  name: string
  title: string
  icon: ResourceStr
}

export class  BiaoItemModel implements  BiaoItem{
  name: string=''
  title: string=''
  icon: ResourceStr=''

  constructor(item: BiaoItem){
    this.name=item.name
    this.title=item.title
    this.icon=item.icon
  }

}
