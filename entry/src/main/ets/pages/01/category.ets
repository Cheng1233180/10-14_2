
interface TabItem {
  name: string;
  title: string;
  books: string[];
}

class TabItemModel implements TabItem{
  name: string ='';
  title: string ='';
  books: string[] = [];

  constructor(data: TabItem) {
    this.name=data.name;
    this.title=data.title;
    this.books=data.books;
  }
}

@Entry
@Component
struct MyComponent {
  @State list : TabItem[] = [
    new TabItemModel({
      name: 'java',
      title: 'Java',
      books: [
        'nsumvbshm',
        'oikdk',
        'imuovxm',
        'rhqciceox',
        'qrntid',
        'xnvjv',
      ]
    }),
    new TabItemModel({
      name: 'qd',
      title: '前端',
      books: [
        'nsumvbshm',
        'oikdk',
        'imuovxm',
        'rhqciceox',
        'qrntid',
        'xnvjv',
      ]
    }),
    new TabItemModel({
      name: 'yjs',
      title: '云计算',
      books: [
        'nsumvbshm',
        'oikdk',
        'imuovxm',
        'rhqciceox',
        'qrntid',
        'xnvjv',
      ]
    }),new TabItemModel({
    name: 'yw',
    title: '运维',
    books: [
      'nsumvbshm',
      'oikdk',
      'imuovxm',
      'rhqciceox',
      'qrntid',
      'xnvjv',
    ]
  }),new TabItemModel({
    name: 'cs',
    title: '测试',
    books: [
      'nsumvbshm',
      'oikdk',
      'imuovxm',
      'rhqciceox',
      'qrntid',
      'xnvjv',
    ]
  }),
    new TabItemModel({
      name: 'ui',
      title: 'UI设计',
      books: [
        'nsumvbshm',
        'oikdk',
        'imuovxm',
        'rhqciceox',
        'qrntid',
        'xnvjv',
      ]
    }),
    new TabItemModel({
      name: 'rgzn',
      title: '人工智能',
      books: [
        'nsumvbshm',
        'oikdk',
        'imuovxm',
        'rhqciceox',
        'qrntid',
        'xnvjv',
      ]
    }),
    new TabItemModel({
      name: 'dsj',
      title: '大数据',
      books: [
        'nsumvbshm',
        'oikdk',
        'imuovxm',
        'rhqciceox',
        'qrntid',
        'xnvjv',
      ]
    }),
  ]

  @State currentIndex: number = 0;

  @Builder
  categoryItem(item: TabItem) {
      Text(item.title)
        .fontColor(item.name == this.list[this.currentIndex].name ? '#ff386bc4' : '#000')
        .layoutWeight(1)
        .backgroundColor('#fff5f9fd')
        .width(100)
        .textAlign(TextAlign.Center)
        .border({
          width:{
            left:4
          },
          color:{
            left:item.name == this.list[this.currentIndex].name ? '#ff386bc4' : '#fff5f9fd'
          }
        })


  }


  build() {
    Column(){
      Row(){
        Row()
          .width(30)
          .aspectRatio(1)
        Text('分类')
          .layoutWeight(1)
          .textAlign(TextAlign.Center)
          .fontColor('#fff')
          .fontSize(18)
          .fontWeight(500)
        Image($r('sys.media.AI_search'))
          .width(30)
          .aspectRatio(1)
          .fillColor('#fff')
      }
      .height(50)
      .backgroundColor('#ff386bc4')
      .width('100%')

      Tabs({index: $$this.currentIndex}){
        ForEach(this.list, (item: TabItem)=>{
          TabContent(){
            Grid(){
              ForEach(item.books, (book: string) =>{
                GridItem(){
                  Text(book)
                    .width(70)
                    .height(30)
                    .backgroundColor('#fff')
                    .borderRadius(15)
                    .borderWidth(1)
                    .textAlign(TextAlign.Center)
                    .fontSize(10)
                }
              })
            }
            .columnsTemplate('1fr 1fr 1fr')
            .layoutDirection(1)
            .rowsGap(10)
            .columnsGap(10)
            .padding(20)

          }.tabBar(this.categoryItem(item))
        })


      }
      .barWidth(100)
      .width('100%')
      .height('100%')
      .vertical(true)

    }
    .width('100%')
    .height('100%')
  }
}