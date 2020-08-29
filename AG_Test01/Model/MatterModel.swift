class MatterModel {
    
    var Id: String?
    var Title: String?
    var Date: String?
    var StartTime: String?
    var Time: String?
    var Address: String?
    var Money: String?
    var Content: String?
    
    init(Id:String?, Title:String?, Date:String?, StartTime:String?, Time:String?, Address:String?, Money:String?, Content:String?) {
        self.Id = Id;
        self.Title = Title;
        self.Date = Date;
        self.StartTime = StartTime;
        self.Time = Time;
        self.Address = Address;
        self.Money = Money;
        self.Content = Content;
    }
}
