import LieBiao from './tab/liebiao'

interface TabItem {
  name: string
  title: string
}


@Preview
@Component
struct Tab {
  @State list : TabItem[] = [
    {
      name: 'recommend',
      title: '推荐'
    },
    {
      name: 'java',
      title: 'Java'
    },
    {
      name: 'front',
      title: '前端'
    },
    {
      name: 'count',
      title: '云计算'
    },
    {
      name: 'operate',
      title: '运维'
    }
  ]

  @State currentIndex: number = 0

  @Builder
  TabContentItem(item: TabItem) {
    Text(item.title)
      .fontSize(16)
      .padding({bottom: 5})
      .fontColor(item.name == this.list[this.currentIndex].name ? '#004198' : '#8b8b8b')
      .border({
        width: {bottom:item.name == this.list[this.currentIndex].name ? 4 : 0},
        color: '#004198',
      })
  }

  build() {
    Tabs({index: $$this.currentIndex}){
      ForEach(this.list, (item: TabItem)=>{
        TabContent(){
          if (item.name == 'recommend') {
            LieBiao()
          }else if (item.name == 'java') {
            Text('Java')
          }else if (item.name == 'front') {
            Text('前端')
          }else if (item.name == 'count') {
            Text('云计算')
          }else if (item.name == 'operate') {
            Text('运维')
          }
        }.tabBar(this.TabContentItem(item))
      }, (item: TabItem)=> item.name)
    }.barPosition(BarPosition.Start)

  }
}
export default Tab;