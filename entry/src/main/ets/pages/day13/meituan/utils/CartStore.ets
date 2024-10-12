import { FoodItem } from '../models/FoodItem'

PersistentStorage.persistProp('cart_list',[])
export class CartStore {

  static addCutCart(item:FoodItem,flag:boolean=true){
    const list=AppStorage.get<FoodItem[]>('cart_list')!
    const index=list.findIndex(listItem=>listItem.id===item.id)
    if(flag)
    {
      if (index<0) {
        item.count=1
        list.unshift(item)
      }
      else {
        list[index].count++
        list.splice(index,1,list[index])
      }

    }
    else {
      list[index].count--
      if (list[index].count===0) {
        list.splice(index,1)
      }
      else {
        list.splice(index,1,list[index])
      }
    }
    AppStorage.SetOrCreate('cart_list',list)
  }



}