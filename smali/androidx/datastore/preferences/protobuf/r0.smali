.class public final enum Landroidx/datastore/preferences/protobuf/r0;
.super Ljava/lang/Enum;


# static fields
.field public static final enum b:Landroidx/datastore/preferences/protobuf/r0;

.field public static final enum q:Landroidx/datastore/preferences/protobuf/r0;

.field public static final enum r:Landroidx/datastore/preferences/protobuf/r0;

.field public static final enum s:Landroidx/datastore/preferences/protobuf/r0;

.field public static final enum t:Landroidx/datastore/preferences/protobuf/r0;

.field public static final enum u:Landroidx/datastore/preferences/protobuf/r0;

.field public static final enum v:Landroidx/datastore/preferences/protobuf/r0;

.field public static final enum w:Landroidx/datastore/preferences/protobuf/r0;

.field public static final enum x:Landroidx/datastore/preferences/protobuf/r0;

.field public static final synthetic y:[Landroidx/datastore/preferences/protobuf/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Landroidx/datastore/preferences/protobuf/r0;

    const-string v1, "INT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/r0;

    new-instance v1, Landroidx/datastore/preferences/protobuf/r0;

    const-string v2, "LONG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/r0;->q:Landroidx/datastore/preferences/protobuf/r0;

    new-instance v2, Landroidx/datastore/preferences/protobuf/r0;

    const-string v3, "FLOAT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/datastore/preferences/protobuf/r0;->r:Landroidx/datastore/preferences/protobuf/r0;

    new-instance v3, Landroidx/datastore/preferences/protobuf/r0;

    const-string v4, "DOUBLE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/datastore/preferences/protobuf/r0;->s:Landroidx/datastore/preferences/protobuf/r0;

    new-instance v4, Landroidx/datastore/preferences/protobuf/r0;

    const-string v5, "BOOLEAN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/datastore/preferences/protobuf/r0;->t:Landroidx/datastore/preferences/protobuf/r0;

    new-instance v5, Landroidx/datastore/preferences/protobuf/r0;

    const-string v6, "STRING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/datastore/preferences/protobuf/r0;->u:Landroidx/datastore/preferences/protobuf/r0;

    new-instance v6, Landroidx/datastore/preferences/protobuf/r0;

    sget-object v7, Landroidx/datastore/preferences/protobuf/g;->r:Landroidx/datastore/preferences/protobuf/g;

    const-string v7, "BYTE_STRING"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/datastore/preferences/protobuf/r0;->v:Landroidx/datastore/preferences/protobuf/r0;

    new-instance v7, Landroidx/datastore/preferences/protobuf/r0;

    const-string v8, "ENUM"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/datastore/preferences/protobuf/r0;->w:Landroidx/datastore/preferences/protobuf/r0;

    new-instance v8, Landroidx/datastore/preferences/protobuf/r0;

    const-string v9, "MESSAGE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Landroidx/datastore/preferences/protobuf/r0;->x:Landroidx/datastore/preferences/protobuf/r0;

    filled-new-array/range {v0 .. v8}, [Landroidx/datastore/preferences/protobuf/r0;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/r0;->y:[Landroidx/datastore/preferences/protobuf/r0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/r0;
    .locals 1

    const-class v0, Landroidx/datastore/preferences/protobuf/r0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/r0;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/r0;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/r0;->y:[Landroidx/datastore/preferences/protobuf/r0;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/r0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/r0;

    return-object v0
.end method
