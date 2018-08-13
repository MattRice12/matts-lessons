
# These are already created, so this catches duplicates if spelling of a record changes.
ActiveRecord::Base.transaction do
  language_count = Language.count
  category_count = Category.count
  lesson_count = Lesson.count

  css = Language.where(title: "CSS", view_tag: "css").first_or_create!
  javascript = Language.where(title: "JavaScript", view_tag: "javascript").first_or_create!

  pseudo_classes = Category.where(title: "Pseudo-classes", view_tag: "pseudo-classes", language_id: css.id).first_or_create!
  functions = Category.where(title: "Functions", view_tag: "functions", language_id: javascript.id).first_or_create!

  Lesson.where(title: ":checked", view_tag: "checked", category_id: pseudo_classes.id).first_or_create!
  Lesson.where(title: ":first-child & :nth-child", view_tag: "child", category_id: pseudo_classes.id).first_or_create!
  Lesson.where(title: "Anatomy of a Function", view_tag: "function-anatomy", category_id: functions.id).first_or_create!

  raise DuplicateLanguages  if language_count != Language.count
  raise DuplicateCategories if category_count != Category.count
  raise DuplicateLessons    if lesson_count   != Lesson.count
end

cat = Category.find_by(view_tag: "functions")
Lesson.create!(title: "If/Else Statements", view_tag: "if-else", category_id: cat.id)
