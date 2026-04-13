.class public final enum Landroidx/datastore/preferences/protobuf/A;
.super Ljava/lang/Enum;


# static fields
.field public static final enum b:Landroidx/datastore/preferences/protobuf/A;

.field public static final enum q:Landroidx/datastore/preferences/protobuf/A;

.field public static final enum r:Landroidx/datastore/preferences/protobuf/A;

.field public static final enum s:Landroidx/datastore/preferences/protobuf/A;

.field public static final enum t:Landroidx/datastore/preferences/protobuf/A;

.field public static final enum u:Landroidx/datastore/preferences/protobuf/A;

.field public static final enum v:Landroidx/datastore/preferences/protobuf/A;

.field public static final enum w:Landroidx/datastore/preferences/protobuf/A;

.field public static final enum x:Landroidx/datastore/preferences/protobuf/A;

.field public static final enum y:Landroidx/datastore/preferences/protobuf/A;

.field public static final synthetic z:[Landroidx/datastore/preferences/protobuf/A;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Landroidx/datastore/preferences/protobuf/A;

    const-string v1, "VOID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/A;->b:Landroidx/datastore/preferences/protobuf/A;

    new-instance v1, Landroidx/datastore/preferences/protobuf/A;

    const-string v2, "INT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/A;->q:Landroidx/datastore/preferences/protobuf/A;

    new-instance v2, Landroidx/datastore/preferences/protobuf/A;

    const-string v3, "LONG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/datastore/preferences/protobuf/A;->r:Landroidx/datastore/preferences/protobuf/A;

    new-instance v3, Landroidx/datastore/preferences/protobuf/A;

    const-string v4, "FLOAT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/datastore/preferences/protobuf/A;->s:Landroidx/datastore/preferences/protobuf/A;

    new-instance v4, Landroidx/datastore/preferences/protobuf/A;

    const-string v5, "DOUBLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/datastore/preferences/protobuf/A;->t:Landroidx/datastore/preferences/protobuf/A;

    new-instance v5, Landroidx/datastore/preferences/protobuf/A;

    const-string v6, "BOOLEAN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/datastore/preferences/protobuf/A;->u:Landroidx/datastore/preferences/protobuf/A;

    new-instance v6, Landroidx/datastore/preferences/protobuf/A;

    const-string v7, "STRING"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/datastore/preferences/protobuf/A;->v:Landroidx/datastore/preferences/protobuf/A;

    new-instance v7, Landroidx/datastore/preferences/protobuf/A;

    sget-object v8, Landroidx/datastore/preferences/protobuf/g;->r:Landroidx/datastore/preferences/protobuf/g;

    const-string v8, "BYTE_STRING"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/datastore/preferences/protobuf/A;->w:Landroidx/datastore/preferences/protobuf/A;

    new-instance v8, Landroidx/datastore/preferences/protobuf/A;

    const-string v9, "ENUM"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Landroidx/datastore/preferences/protobuf/A;->x:Landroidx/datastore/preferences/protobuf/A;

    new-instance v9, Landroidx/datastore/preferences/protobuf/A;

    const-string v10, "MESSAGE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/datastore/preferences/protobuf/A;->y:Landroidx/datastore/preferences/protobuf/A;

    filled-new-array/range {v0 .. v9}, [Landroidx/datastore/preferences/protobuf/A;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/A;->z:[Landroidx/datastore/preferences/protobuf/A;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/A;
    .locals 1

    const-class v0, Landroidx/datastore/preferences/protobuf/A;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/A;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/A;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/A;->z:[Landroidx/datastore/preferences/protobuf/A;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/A;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/A;

    return-object v0
.end method
