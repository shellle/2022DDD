



|ドメイン|型名|プロパティ|メソッドの形式|
| ---- | ---- | ---- | ---- |
|chat_group|  Class  |  ---  |  ---  |
|chat_group_name|  Strings  |  20字以下  |  編集  |
|chat_group_id|  Strings  |  20字以下,不変  |  ---  |
|chat_group_member_list|  Strings <List>  |  20字以下  |  追加,削除  |
|chat_group_unrecievable_start_time|  DateTime  |  ---  |  編集,削除  |
|chat_group_unrecievable_end_time|  DateTime  |  存在非存在がchat_group_unrecievable_start_timeと同期  |  編集,削除  |
| ---- | ---- | ---- | ---- |
|message|  Class  |  ---  |  削除  |
|message_text|  Strings  |  20字以下  |  編集  |
|message_time|  DateTime  |  不変  |  ---  |
| ---- | ---- | ---- | ---- |
|uresent_message|  Class  |  ---  |  削除  |
|uresent_message_text|  Strings  |  20字以下  |  編集  |
|uresent_message_time|  DateTime  |  設定された時刻以降  |  時刻変更  |
| ---- | ---- | ---- | ---- |
|scheduler|  ---  |  ---  |  ---  |
| ---- | ---- | ---- | ---- |
|user|  Class  |  ---  |  ---  |
|user_name|  Strings  |  20字以下  |  名前変更  |
|user_id|  Strings  |  20字以下,不変  |  ---  |
