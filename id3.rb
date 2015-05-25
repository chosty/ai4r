require "ai4r"

DATA_LABELS = ['city', 'age_range', 'gender', 'marketing_taget' ]

DATA_ITEMS = [
	['New York', '<30','M','Y'],
	['Chicago', '<30', 'M','Y'],
	['Chicago', '<30', 'F','Y'],
	['New York','<30', 'M','Y'],
	['New York','<30', 'M','Y'],
	['Chicago', '[30-50)','M','Y'],
	['New York','[30-50)','F','N'],
	['Chicago', '[30-50)','F','Y'],
	['New York','[30-50)','F','N'],
	['Chicago', '[50-80]','M','N'],
	['New York','[50-80]','F','N'],
	['New York','[50-80]','M','N'],
	['Chicago', '[50-80]','M','N'],
	['New York','[50-80]','F','N'],
	['Chicago', '>80','F','Y']
]

data_set = Ai4r::Data::DataSet.new(:data_items=>DATA_ITEMS, :data_labels=>DATA_LABELS)

id3 = Ai4r::Classifiers::ID3.new.build(data_set)

puts id3.get_rules

puts id3.eval(['New York', '<30', 'M'])
