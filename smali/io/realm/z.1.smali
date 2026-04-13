.class public final enum Lio/realm/z;
.super Ljava/lang/Enum;


# static fields
.field public static final enum q:Lio/realm/z;

.field public static final enum r:Lio/realm/z;

.field public static final s:[Lio/realm/z;

.field public static final synthetic t:[Lio/realm/z;


# instance fields
.field public final b:Lio/realm/RealmFieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/realm/z;

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "INTEGER"

    const/4 v12, 0x0

    invoke-direct {v0, v2, v12, v1}, Lio/realm/z;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;)V

    new-instance v1, Lio/realm/z;

    const/4 v2, 0x1

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v4, "BOOLEAN"

    invoke-direct {v1, v4, v2, v3}, Lio/realm/z;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;)V

    new-instance v2, Lio/realm/z;

    const/4 v3, 0x2

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v5, "STRING"

    invoke-direct {v2, v5, v3, v4}, Lio/realm/z;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;)V

    new-instance v3, Lio/realm/z;

    const/4 v4, 0x3

    sget-object v5, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    const-string v6, "BINARY"

    invoke-direct {v3, v6, v4, v5}, Lio/realm/z;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;)V

    new-instance v4, Lio/realm/z;

    const/4 v5, 0x4

    sget-object v6, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string v7, "DATE"

    invoke-direct {v4, v7, v5, v6}, Lio/realm/z;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;)V

    new-instance v5, Lio/realm/z;

    const/4 v6, 0x5

    sget-object v7, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const-string v8, "FLOAT"

    invoke-direct {v5, v8, v6, v7}, Lio/realm/z;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;)V

    new-instance v6, Lio/realm/z;

    const/4 v7, 0x6

    sget-object v8, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const-string v9, "DOUBLE"

    invoke-direct {v6, v9, v7, v8}, Lio/realm/z;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;)V

    new-instance v7, Lio/realm/z;

    const/4 v8, 0x7

    sget-object v9, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    const-string v10, "DECIMAL128"

    invoke-direct {v7, v10, v8, v9}, Lio/realm/z;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;)V

    new-instance v8, Lio/realm/z;

    const/16 v9, 0x8

    sget-object v10, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    const-string v11, "OBJECT_ID"

    invoke-direct {v8, v11, v9, v10}, Lio/realm/z;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;)V

    new-instance v9, Lio/realm/z;

    const/16 v10, 0x9

    sget-object v11, Lio/realm/RealmFieldType;->TYPED_LINK:Lio/realm/RealmFieldType;

    const-string v13, "OBJECT"

    invoke-direct {v9, v13, v10, v11}, Lio/realm/z;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;)V

    sput-object v9, Lio/realm/z;->q:Lio/realm/z;

    new-instance v10, Lio/realm/z;

    const/16 v11, 0xa

    sget-object v13, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    const-string v14, "UUID"

    invoke-direct {v10, v14, v11, v13}, Lio/realm/z;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;)V

    new-instance v11, Lio/realm/z;

    const/16 v13, 0xb

    const/4 v14, 0x0

    const-string v15, "NULL"

    invoke-direct {v11, v15, v13, v14}, Lio/realm/z;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;)V

    sput-object v11, Lio/realm/z;->r:Lio/realm/z;

    filled-new-array/range {v0 .. v11}, [Lio/realm/z;

    move-result-object v0

    sput-object v0, Lio/realm/z;->t:[Lio/realm/z;

    const/16 v0, 0x13

    new-array v0, v0, [Lio/realm/z;

    sput-object v0, Lio/realm/z;->s:[Lio/realm/z;

    invoke-static {}, Lio/realm/z;->values()[Lio/realm/z;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v12, v1, :cond_1

    aget-object v2, v0, v12

    sget-object v3, Lio/realm/z;->r:Lio/realm/z;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lio/realm/z;->b:Lio/realm/RealmFieldType;

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v3

    sget-object v4, Lio/realm/z;->s:[Lio/realm/z;

    aput-object v2, v4, v3

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lio/realm/z;->s:[Lio/realm/z;

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v1

    sget-object v2, Lio/realm/z;->q:Lio/realm/z;

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILio/realm/RealmFieldType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/realm/z;->b:Lio/realm/RealmFieldType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/z;
    .locals 1

    const-class v0, Lio/realm/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/z;

    return-object p0
.end method

.method public static values()[Lio/realm/z;
    .locals 1

    sget-object v0, Lio/realm/z;->t:[Lio/realm/z;

    invoke-virtual {v0}, [Lio/realm/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/z;

    return-object v0
.end method
