Given(/^a screen with a view with some text$/) do
  pan_up_to_see("* text:'Directional Swipe Measurer'", 5)
end

When(/^the user asks to enter "([^\"]*)"$/) do |text|
  text_to_enter = text

  if type == :native
    enter_text(native_editable_query, text_to_enter)
  elsif type == :webview
    enter_text(webview_editable_query, text_to_enter)
  else
    raise "Unknown type '#{type}'"
  end
end

Then(/^text "([^\"]*)" is entered using the keyboard$/) do |text|
  expected_text = text

  if type == :native
    result = native_editable_text
  elsif type == :webview
    result = webview_editable_text
  else
    raise "Unknown type '#{type}'"
  end

  if result != expected_text
    raise "Text was not entered. Expected '#{expected_text}' got '#{result}'"
  end
end
