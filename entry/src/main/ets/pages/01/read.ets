import Title from './read/title'
import Tab from './read/tab'

@Entry
@Component
struct Read {
  build() {
    Scroll(){
      Column(){
        Title()
        Tab()
      }
      .width('100%')
    }
    .width('100%')
    .height('100%')
  }

}

export default Read;