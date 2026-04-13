.class public final Lio/realm/m;
.super Lio/realm/t;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;Lio/realm/internal/core/NativeRealmAny;I)V
    .locals 0

    iput p3, p0, Lio/realm/m;->c:I

    invoke-direct {p0, p1, p2}, Lio/realm/t;-><init>(Ljava/io/Serializable;Lio/realm/internal/core/NativeRealmAny;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/realm/internal/core/NativeRealmAny;
    .locals 3

    iget v0, p0, Lio/realm/m;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    const-class v1, Ljava/util/UUID;

    iget-object v2, p0, Lio/realm/t;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    invoke-direct {v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(Ljava/util/UUID;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    const-class v1, Lorg/bson/types/ObjectId;

    iget-object v2, p0, Lio/realm/t;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bson/types/ObjectId;

    invoke-direct {v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(Lorg/bson/types/ObjectId;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    const-class v1, Ljava/lang/Double;

    iget-object v2, p0, Lio/realm/t;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-direct {v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    const-class v1, Ljava/util/Date;

    iget-object v2, p0, Lio/realm/t;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-direct {v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(Ljava/util/Date;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    const-class v1, Ljava/lang/Number;

    iget-object v2, p0, Lio/realm/t;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-direct {v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(Ljava/lang/Number;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lio/realm/m;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lio/realm/t;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    if-eqz p1, :cond_1

    const-class v0, Lio/realm/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lio/realm/B;

    iget-object v0, p0, Lio/realm/t;->b:Ljava/lang/Object;

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1}, Lio/realm/B;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
