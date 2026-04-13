.class public final synthetic Lib/player/base/helper/a;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:Lib/player/base/helper/c;


# direct methods
.method public synthetic constructor <init>(Lib/player/base/helper/c;)V
    .locals 0

    iput-object p1, p0, Lib/player/base/helper/a;->a:Lib/player/base/helper/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LE1/f;)V
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/a;->a:Lib/player/base/helper/c;

    iget-object v0, v0, Lib/player/base/helper/c;->c:Ljava/lang/Object;

    check-cast v0, Lib/player/base/helper/b;

    iget v1, p1, LE1/f;->a:I

    if-nez v1, :cond_0

    const-string p1, "BillingManager"

    const-string v1, "Purchase acknowledged successfully"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lib/player/base/helper/b;->d()V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to acknowledge purchase: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, LE1/f;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lib/player/base/helper/b;->h(Ljava/lang/String;)V

    return-void
.end method

.method public b(LE1/f;Ljava/util/ArrayList;)V
    .locals 2

    iget v0, p1, LE1/f;->a:I

    const-string v1, "BillingManager"

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LE1/h;

    iget-object p2, p0, Lib/player/base/helper/a;->a:Lib/player/base/helper/c;

    iput-object p1, p2, Lib/player/base/helper/c;->e:Ljava/lang/Object;

    const-string p1, "Product details cached"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to query product details: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, LE1/f;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c(LE1/f;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/a;->a:Lib/player/base/helper/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, LE1/f;->a:I

    const-string v2, "BillingManager"

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0, p2}, Lib/player/base/helper/c;->i(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string p1, "No existing purchases found"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to query existing purchases: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, LE1/f;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
