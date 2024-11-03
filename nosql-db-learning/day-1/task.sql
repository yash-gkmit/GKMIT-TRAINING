1. 	create a array of object of 3 element and delete 2nd element using pull operator.

- db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$set: {'testy': [{val: 1}, {val: 2}, {val:3}]}})
- db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$pull: {'testy': {val: 2}}})

- db.users.findOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')})


2. Use all update operators using the mflix database.

- $currentDate
	db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$set: {"date": ISODate("2013-10-02T01:11:18.965Z")}})
	db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$currentDate: { "updatedDate": {$type: "date"}}})

- $inc
	db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$set: {likes: 1 }})
	db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$inc: {likes: 4}})

- $min
	db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$min: {likes:4 }})

- $min
	db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$max: {likes:50 }}

- $rename
	db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$rename: {likes: 'counts'}})

- $set
	db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$set: {likes: 10}})

- $unset
	db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$unset: {updatedDate: ""}})

Array update operators

- $push
	db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$push: {arr: {name: 'Akshay'}}})


- $pull
	db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$pull: {arr: {name: 'Mundra'}}})


- $pop
	db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$pop: {arr: -1}})
	+1 to delete from end and -1 from front

- $addToSet
	db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$addToSet: {arr: 'Akshay'}})
	db.users.updateOne({_id: ObjectId('59b99db6cfa9a34dcd7885bb')}, {$addToSet: {arr: 'Akshay'}})
	will push only single 'Akshay' 


3. Use limit, sort, and skip on mflix and show implementations.

- limit
	db.movies.find().limit(2)

- sort
	db.movies.find().sort({year: 1}).limit(10)

- skip
	db.users.find().sort({name: 1}).skip(5).limit(5)


4. Use $and and $or in a single query.

	db.users.find({$and: [{$or: [{email: "april_cole@fakegmail.com"}, {email: "abc@gmail.com"}]}, {name: "April Cole"}]})


5. Implement regex to find all that follows that regex on plot of the movies collections also use skip and limit - 10 docs 
	 db.movies.find({plot: {$regex: /space/}}).skip(10).limit(10)

