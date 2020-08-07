class DateHelper
{
  static int getPlusDayTimeToMiliSec()
  {
    var now = new DateTime.now();
//    print('chek :: $now\n');
    DateTime nextTwentyThreeHoursFromNow = now.add(new Duration(hours: 23));
//    print('chek :: $sixtyDaysFromNow\n');
    var dateMiliSec =nextTwentyThreeHoursFromNow.millisecondsSinceEpoch ;
    return dateMiliSec.toInt();
//    print('chek :: $datemili\n');
//    var date = DateTime.fromMillisecondsSinceEpoch(datemili);
//    print('chek :: $date\n');
  }


  static int getcurrentDateMiliSec()
  {
    var now = new DateTime.now();
    return now.millisecondsSinceEpoch ;
  }
}