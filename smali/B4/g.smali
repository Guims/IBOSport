.class public final synthetic LB4/g;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/H;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LB4/g;->a:I

    iput-object p2, p0, LB4/g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, LB4/g;->a:I

    iget-object v1, p0, LB4/g;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Ljava/util/List;

    check-cast p1, Lio/realm/T;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lib/player/app/MyApp;->v:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/realm/r;

    invoke-direct {v2, p1}, Lio/realm/r;-><init>(Lio/realm/T;)V

    :goto_0
    invoke-virtual {v2}, Lio/realm/internal/s;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lio/realm/internal/s;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/EPGChannel;

    new-instance v3, Lib/player/models/CategoryModel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object p1

    sget-object v5, Lib/player/base/m;->b:Lib/player/base/m;

    invoke-direct {v3, v4, p1, v5}, Lib/player/models/CategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lib/player/base/m;)V

    invoke-virtual {v3}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CategoryModel;

    invoke-virtual {v1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lib/player/app/MyApp;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    return-void

    :pswitch_0
    check-cast v1, LB4/f;

    check-cast p1, Lio/realm/T;

    sget-object v0, LB4/s;->v1:Ljava/util/ArrayList;

    invoke-virtual {v1}, LB4/f;->b()Ljava/lang/Object;

    invoke-virtual {p1}, Lio/realm/T;->e()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
