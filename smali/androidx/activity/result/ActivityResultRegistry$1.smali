.class Landroidx/activity/result/ActivityResultRegistry$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic q:Landroidx/activity/result/b;

.field public final synthetic r:LC2/b;

.field public final synthetic s:Landroidx/activity/result/g;


# direct methods
.method public constructor <init>(Landroidx/activity/result/g;Ljava/lang/String;Landroidx/activity/result/b;LC2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->s:Landroidx/activity/result/g;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$1;->q:Landroidx/activity/result/b;

    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$1;->r:LC2/b;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/r;Landroidx/lifecycle/l;)V
    .locals 5

    sget-object p1, Landroidx/lifecycle/l;->ON_START:Landroidx/lifecycle/l;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Ljava/lang/String;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->s:Landroidx/activity/result/g;

    if-eqz p1, :cond_1

    iget-object p1, v1, Landroidx/activity/result/g;->e:Ljava/util/HashMap;

    iget-object p2, v1, Landroidx/activity/result/g;->g:Landroid/os/Bundle;

    iget-object v1, v1, Landroidx/activity/result/g;->f:Ljava/util/HashMap;

    new-instance v2, Landroidx/activity/result/e;

    iget-object v3, p0, Landroidx/activity/result/ActivityResultRegistry$1;->q:Landroidx/activity/result/b;

    iget-object v4, p0, Landroidx/activity/result/ActivityResultRegistry$1;->r:LC2/b;

    invoke-direct {v2, v3, v4}, Landroidx/activity/result/e;-><init>(Landroidx/activity/result/b;LC2/b;)V

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/activity/result/a;

    if-eqz p1, :cond_3

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget p2, p1, Landroidx/activity/result/a;->b:I

    iget-object p1, p1, Landroidx/activity/result/a;->q:Landroid/content/Intent;

    invoke-virtual {v4, p2, p1}, LC2/b;->G(ILandroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v3, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p1, Landroidx/lifecycle/l;->ON_STOP:Landroidx/lifecycle/l;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v1, Landroidx/activity/result/g;->e:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    sget-object p1, Landroidx/lifecycle/l;->ON_DESTROY:Landroidx/lifecycle/l;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1, v0}, Landroidx/activity/result/g;->f(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
