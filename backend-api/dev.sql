CREATE TABLE events (
    id UUID PRIMARY KEY,
    name VARCHAR,
    value BIGINT NOT NULL,
    date TIMESTAMP NOT NULL,
    category UUID
);

INSERT INTO events (id, name, value, date, category) VALUES ('ac52a466-b24b-4ba3-93aa-b57fff71e183', 'Доход 1', 22, '2019-11-22 19:10:25-07', 'b84f6b78-3ef3-4d3c-ac00-d720dc34b94b');
INSERT INTO events (id, name, value, date, category) VALUES ('dd2b94f2-7038-4b3d-8052-fe045f1d80e5', 'Расход 1', 265, '2019-11-22 19:10:25-07', 'c9451394-4f0f-4d1c-bcdd-00ca1bbb409e');
INSERT INTO events (id, name, value, date, category) VALUES ('0a2d2391-63e1-4426-9d94-d2a6e2fbe4bf', 'Доход 2', 508, '2019-11-22 19:10:25-07', '57c3a122-1674-4f88-a3f3-c25928326c30');
INSERT INTO events (id, name, value, date, category) VALUES ('ab81ff12-41ce-4ae6-b0fa-26366291abb8', 'Доход 3', 751, '2019-11-22 19:10:25-07', NULL);
INSERT INTO events (id, name, value, date, category) VALUES ('681117c5-69bf-4023-8588-bdda98cff8de', 'Расход 2', 994, '2019-11-22 19:10:25-07', 'c9451394-4f0f-4d1c-bcdd-00ca1bbb409e');
INSERT INTO events (id, name, value, date, category) VALUES ('631506a7-727a-4298-9346-edfc7cf68a3f', 'Доход 4', 1237, '2019-11-22 19:10:25-07', NULL);
INSERT INTO events (id, name, value, date, category) VALUES ('076cee52-104d-4ea3-bd08-c44fa9e729af', 'Доход 5', 1480, '2019-11-22 19:10:25-07', '4a55d7c4-d549-4335-a8df-e41f4a55c927');
INSERT INTO events (id, name, value, date, category) VALUES ('8629cbd6-989b-4885-9297-1051cb21e8b7', 'Доход 6', 1723, '2019-11-22 19:10:25-07', '57c3a122-1674-4f88-a3f3-c25928326c30');
INSERT INTO events (id, name, value, date, category) VALUES ('0a900c14-619f-4759-9d8c-39553f4fa51a', 'Расход 3', 1966, '2019-11-22 19:10:25-07', '7a342400-09d2-4875-b5c8-fff047a3d56c');
INSERT INTO events (id, name, value, date, category) VALUES ('a6cecf30-defa-4b2d-b525-e3a688763ca8', 'Доход 7', 2209, '2019-11-22 19:10:25-07', '4a55d7c4-d549-4335-a8df-e41f4a55c927');
INSERT INTO events (id, name, value, date, category) VALUES ('a8a60790-81a5-424a-b911-81300a2b6174', 'Расход 4', 2452, '2019-11-22 19:10:25-07', 'c9451394-4f0f-4d1c-bcdd-00ca1bbb409e');
INSERT INTO events (id, name, value, date, category) VALUES ('5fff752e-63f9-46a7-8e60-72b1b8065da7', 'Расход 5', 2695, '2019-11-22 19:10:25-07', '7a342400-09d2-4875-b5c8-fff047a3d56c');
INSERT INTO events (id, name, value, date, category) VALUES ('ed497cc7-143c-4eba-844e-d4e993ae6de2', 'Расход 6', 2938, '2019-11-22 19:10:25-07', NULL);
INSERT INTO events (id, name, value, date, category) VALUES ('56ce91e6-b7f7-4193-923f-1b9a7b133f93', 'Доход 8', 3181, '2019-11-22 19:10:25-07', '57c3a122-1674-4f88-a3f3-c25928326c30');
INSERT INTO events (id, name, value, date, category) VALUES ('bc9119c9-ef81-4863-883b-022729775093', 'Расход 7', 3424, '2019-11-22 19:10:25-07', 'b84f6b78-3ef3-4d3c-ac00-d720dc34b94b');
INSERT INTO events (id, name, value, date, category) VALUES ('af81ac81-27e1-4fcb-ae8c-78c4819cd4bf', 'Доход 9', 3667, '2019-11-22 19:10:25-07', 'b84f6b78-3ef3-4d3c-ac00-d720dc34b94b');
INSERT INTO events (id, name, value, date, category) VALUES ('59222ec3-ab56-4fd3-b346-c5a2fedd9ab7', 'Расход 8', 3910, '2019-11-22 19:10:25-07', '4a55d7c4-d549-4335-a8df-e41f4a55c927');
INSERT INTO events (id, name, value, date, category) VALUES ('ef4c6e31-efd1-4157-a541-66f9f6788ae0', 'Расход 9', 4153, '2019-11-22 19:10:25-07', NULL);
INSERT INTO events (id, name, value, date, category) VALUES ('27129c13-cff5-4f59-af1b-68adb683db4a', 'Доход 10', 4396, '2019-11-22 19:10:25-07', '57c3a122-1674-4f88-a3f3-c25928326c30');
INSERT INTO events (id, name, value, date, category) VALUES ('5dd770d8-b5e1-49a8-8eda-e2a0a6bcebd8', 'Расход 10', 4639, '2019-11-22 19:10:25-07', '7a342400-09d2-4875-b5c8-fff047a3d56c');

CREATE TABLE categories (
    id UUID PRIMARY KEY,
    name VARCHAR,
    color UUID
);

INSERT INTO categories (id, name, color) VALUES ('c9451394-4f0f-4d1c-bcdd-00ca1bbb409e', 'Продукты', '37a45c09-e484-43ea-9b14-fafa5412fe53');
INSERT INTO categories (id, name, color) VALUES ('57c3a122-1674-4f88-a3f3-c25928326c30', 'Аптека', 'c00f397b-8614-4140-a8bc-94afa7792dab');
INSERT INTO categories (id, name, color) VALUES ('4a55d7c4-d549-4335-a8df-e41f4a55c927', 'Одежда', '4b95eb6c-d40f-428d-b202-93f1de761118');
INSERT INTO categories (id, name, color) VALUES ('7a342400-09d2-4875-b5c8-fff047a3d56c', 'Проезд', 'c9d769c3-c8cd-4387-b322-b873724f20df');
INSERT INTO categories (id, name, color) VALUES ('b84f6b78-3ef3-4d3c-ac00-d720dc34b94b', 'Развлечения', '3ead7505-c69b-46a6-ac66-428997387379');

CREATE TABLE colors (
    id UUID PRIMARY KEY,
    code VARCHAR(7)
);

INSERT INTO colors (id, code) VALUES ('37a45c09-e484-43ea-9b14-fafa5412fe53', '#C0C0C0');
INSERT INTO colors (id, code) VALUES ('c00f397b-8614-4140-a8bc-94afa7792dab', '#FF0000');
INSERT INTO colors (id, code) VALUES ('4b95eb6c-d40f-428d-b202-93f1de761118', '#800000');
INSERT INTO colors (id, code) VALUES ('c9d769c3-c8cd-4387-b322-b873724f20df', '#FFFF00');
INSERT INTO colors (id, code) VALUES ('3ead7505-c69b-46a6-ac66-428997387379', '#00FF00');

CREATE TABLE labels (
    id UUID PRIMARY KEY,
    name VARCHAR,
    color UUID
);

INSERT INTO labels (id, name, color) VALUES ('6f6b6388-587c-49d1-a60d-66c3a4bdd038', 'для_собаки', '37a45c09-e484-43ea-9b14-fafa5412fe53');
INSERT INTO labels (id, name, color) VALUES ('0a77eaee-6b92-469b-b9d2-59b79ecc56f3', 'для_себя_любимого', 'c00f397b-8614-4140-a8bc-94afa7792dab');
INSERT INTO labels (id, name, color) VALUES ('499cda60-4dff-4a74-b7e4-a77dcb48e3a3', 'к_чаю', '4b95eb6c-d40f-428d-b202-93f1de761118');
INSERT INTO labels (id, name, color) VALUES ('e75e997c-a6ce-445e-84a9-1823344768c6', 'в_дороге', 'c9d769c3-c8cd-4387-b322-b873724f20df');
INSERT INTO labels (id, name, color) VALUES ('8b8f3bcb-8fff-4342-9b56-852878e499ba', 'ресторан', '3ead7505-c69b-46a6-ac66-428997387379');

CREATE TABLE event_labels(
    id UUID PRIMARY KEY,
    label_id UUID,
    event_id UUID
);

INSERT INTO event_labels (id, label_id, event_id) VALUES ('3cbec2a1-880e-4f15-814f-c11ca99223db', '6f6b6388-587c-49d1-a60d-66c3a4bdd038', 'ac52a466-b24b-4ba3-93aa-b57fff71e183');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('40952b9c-6eb7-44b2-9c7f-2160092085d7', '0a77eaee-6b92-469b-b9d2-59b79ecc56f3', 'ac52a466-b24b-4ba3-93aa-b57fff71e183');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('946e9e28-816d-4139-9089-f44f1499a6b9', '499cda60-4dff-4a74-b7e4-a77dcb48e3a3', 'dd2b94f2-7038-4b3d-8052-fe045f1d80e5');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('d4000ca3-24a9-4c7e-a1fd-e1c8e0e60479', '6f6b6388-587c-49d1-a60d-66c3a4bdd038', 'dd2b94f2-7038-4b3d-8052-fe045f1d80e5');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('16e817e8-a4f6-49ae-80d8-5c86837919d6', '0a77eaee-6b92-469b-b9d2-59b79ecc56f3', 'dd2b94f2-7038-4b3d-8052-fe045f1d80e5');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('81a6ead6-9f4d-4dc3-b618-34ce41a80181', '6f6b6388-587c-49d1-a60d-66c3a4bdd038', '0a2d2391-63e1-4426-9d94-d2a6e2fbe4bf');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('6ce17177-1224-4dfb-90a3-c87b51061995', '499cda60-4dff-4a74-b7e4-a77dcb48e3a3', '0a2d2391-63e1-4426-9d94-d2a6e2fbe4bf');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('860058b4-c70e-4759-8ef7-ca2b518f3488', '0a77eaee-6b92-469b-b9d2-59b79ecc56f3', 'ab81ff12-41ce-4ae6-b0fa-26366291abb8');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('2a36f228-137b-44aa-8246-b043c36f9a19', '6f6b6388-587c-49d1-a60d-66c3a4bdd038', 'ab81ff12-41ce-4ae6-b0fa-26366291abb8');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('f82197d4-081d-4b89-9f94-5fb3dba6b127', '6f6b6388-587c-49d1-a60d-66c3a4bdd038', '681117c5-69bf-4023-8588-bdda98cff8de');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('343330eb-bb0a-4037-9737-cdf7fd783f7e', '0a77eaee-6b92-469b-b9d2-59b79ecc56f3', '631506a7-727a-4298-9346-edfc7cf68a3f');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('d3f29383-2d08-423e-979d-f1105a22370e', '499cda60-4dff-4a74-b7e4-a77dcb48e3a3', '631506a7-727a-4298-9346-edfc7cf68a3f');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('6da7b5b6-1549-42ee-b4fc-b2a78378ca2f', '6f6b6388-587c-49d1-a60d-66c3a4bdd038', '631506a7-727a-4298-9346-edfc7cf68a3f');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('9037c3f6-ccc8-4cee-9aeb-e993268f4639', 'e75e997c-a6ce-445e-84a9-1823344768c6', '631506a7-727a-4298-9346-edfc7cf68a3f');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('8c81874c-28a3-4357-a4e8-1e42615cb7d4', '6f6b6388-587c-49d1-a60d-66c3a4bdd038', '631506a7-727a-4298-9346-edfc7cf68a3f');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('5937f716-2bd6-43e5-8089-8fad0943e548', '6f6b6388-587c-49d1-a60d-66c3a4bdd038', '076cee52-104d-4ea3-bd08-c44fa9e729af');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('12e93b0a-b220-4011-932c-8f45ea376b72', '0a77eaee-6b92-469b-b9d2-59b79ecc56f3', '8629cbd6-989b-4885-9297-1051cb21e8b7');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('bff8fd1e-a1de-4d35-b576-8f6bf0b6f3c5', 'e75e997c-a6ce-445e-84a9-1823344768c6', '8629cbd6-989b-4885-9297-1051cb21e8b7');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('60dc128c-2f5a-4a05-9d90-4cfe9b7ec70e', '0a77eaee-6b92-469b-b9d2-59b79ecc56f3', '0a900c14-619f-4759-9d8c-39553f4fa51a');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('86f03304-df32-4be3-885c-8180eddf2a46', '6f6b6388-587c-49d1-a60d-66c3a4bdd038', '0a900c14-619f-4759-9d8c-39553f4fa51a');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('8502661c-5130-4568-a3a3-59be1438e156', '8b8f3bcb-8fff-4342-9b56-852878e499ba', '0a900c14-619f-4759-9d8c-39553f4fa51a');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('c9ff7d6b-4e2d-43cb-a2e8-932a556ba8c4', '8b8f3bcb-8fff-4342-9b56-852878e499ba', 'a6cecf30-defa-4b2d-b525-e3a688763ca8');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('711082e3-758f-44ca-93be-8fcfc7103d83', 'e75e997c-a6ce-445e-84a9-1823344768c6', 'a8a60790-81a5-424a-b911-81300a2b6174');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('afca90e0-3519-478a-894a-1a930a46f7fe', '6f6b6388-587c-49d1-a60d-66c3a4bdd038', '5fff752e-63f9-46a7-8e60-72b1b8065da7');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('321761a6-47de-4202-b449-541e23286186', '8b8f3bcb-8fff-4342-9b56-852878e499ba', 'ed497cc7-143c-4eba-844e-d4e993ae6de2');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('a0c48748-d5a6-4b3e-b8de-aaa61272c203', '8b8f3bcb-8fff-4342-9b56-852878e499ba', '56ce91e6-b7f7-4193-923f-1b9a7b133f93');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('443ae820-3f4f-45d7-af94-154759220d88', '0a77eaee-6b92-469b-b9d2-59b79ecc56f3', 'bc9119c9-ef81-4863-883b-022729775093');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('77722fc4-340f-4c9c-a871-d2c265c39ca9', 'e75e997c-a6ce-445e-84a9-1823344768c6', 'af81ac81-27e1-4fcb-ae8c-78c4819cd4bf');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('4ff61c75-eae9-4dbe-816c-d5807041f95c', '8b8f3bcb-8fff-4342-9b56-852878e499ba', 'af81ac81-27e1-4fcb-ae8c-78c4819cd4bf');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('7b59f283-777c-45d1-aa23-e9b25b45d361', '6f6b6388-587c-49d1-a60d-66c3a4bdd038', 'af81ac81-27e1-4fcb-ae8c-78c4819cd4bf');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('0fa3d6db-4215-422a-b435-02b09c100d13', '8b8f3bcb-8fff-4342-9b56-852878e499ba', '59222ec3-ab56-4fd3-b346-c5a2fedd9ab7');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('bc4bc307-2295-4d38-8eae-f4132d104a96', '6f6b6388-587c-49d1-a60d-66c3a4bdd038', 'ef4c6e31-efd1-4157-a541-66f9f6788ae0');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('0248bb38-3c21-440b-97d9-4bfbc40e17c6', '8b8f3bcb-8fff-4342-9b56-852878e499ba', 'ef4c6e31-efd1-4157-a541-66f9f6788ae0');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('a62cc630-bbf9-43f1-9110-cc2b301970d5', '499cda60-4dff-4a74-b7e4-a77dcb48e3a3', 'ef4c6e31-efd1-4157-a541-66f9f6788ae0');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('0a1e21c4-756e-4c0d-83f7-eb3987a534cb', '6f6b6388-587c-49d1-a60d-66c3a4bdd038', '27129c13-cff5-4f59-af1b-68adb683db4a');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('438caf8f-b805-4ab3-8b78-983950d235e8', 'e75e997c-a6ce-445e-84a9-1823344768c6', '27129c13-cff5-4f59-af1b-68adb683db4a');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('f6e46bb3-da16-4796-9c1d-156a98229eb8', '6f6b6388-587c-49d1-a60d-66c3a4bdd038', '5dd770d8-b5e1-49a8-8eda-e2a0a6bcebd8');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('162ff1af-f4f1-4f52-8705-c13b623b3ac7', '8b8f3bcb-8fff-4342-9b56-852878e499ba', '5dd770d8-b5e1-49a8-8eda-e2a0a6bcebd8');
INSERT INTO event_labels (id, label_id, event_id) VALUES ('87f4138a-1a2c-440d-8a74-3e58b2774bad', '0a77eaee-6b92-469b-b9d2-59b79ecc56f3', '5dd770d8-b5e1-49a8-8eda-e2a0a6bcebd8');








































