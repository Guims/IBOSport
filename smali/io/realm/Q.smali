.class public abstract Lio/realm/Q;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lio/realm/d;

.field public final b:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lh3/e;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v5, Ljava/lang/Short;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v9, Ljava/lang/Long;

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v10, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-object v10, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v11, Ljava/lang/Float;

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v12, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-object v12, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v13, Ljava/lang/Double;

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v14, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-object v14, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v15, Ljava/lang/Boolean;

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    move-object/from16 v17, v2

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move-object/from16 v19, v2

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v2, [B

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move-object/from16 v20, v2

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v2, Ljava/util/Date;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move-object/from16 v21, v2

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v2, Lorg/bson/types/ObjectId;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move-object/from16 v22, v2

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v2, Lorg/bson/types/Decimal128;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move-object/from16 v23, v2

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v2, Ljava/util/UUID;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move-object/from16 v24, v2

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v2, Lio/realm/A;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lh3/e;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move-object/from16 v25, v2

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v16, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v16, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v16, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v16, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v2, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v2, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v2, v20

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v2, v21

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v2, v22

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v2, v23

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v2, v24

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v2, v25

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lh3/e;

    sget-object v18, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v3, v17

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v3, v19

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v3, v20

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v3, v21

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v3, v22

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v3, v23

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v3, v24

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    move-object/from16 v3, v25

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lh3/e;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v3, Lio/realm/O;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v3, Lio/realm/L;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v3, Lio/realm/K;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/e;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    const-class v2, Lio/realm/U;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lio/realm/d;Lio/realm/internal/Table;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/Q;->a:Lio/realm/d;

    iput-object p2, p0, Lio/realm/Q;->b:Lio/realm/internal/Table;

    return-void
.end method
