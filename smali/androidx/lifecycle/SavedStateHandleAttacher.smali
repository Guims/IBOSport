.class public final Landroidx/lifecycle/SavedStateHandleAttacher;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final b:Landroidx/lifecycle/H;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleAttacher;->b:Landroidx/lifecycle/H;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/r;Landroidx/lifecycle/l;)V
    .locals 2

    sget-object v0, Landroidx/lifecycle/l;->ON_CREATE:Landroidx/lifecycle/l;

    if-ne p2, v0, :cond_3

    invoke-interface {p1}, Landroidx/lifecycle/r;->h()Landroidx/lifecycle/t;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/t;->f(Landroidx/lifecycle/q;)V

    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleAttacher;->b:Landroidx/lifecycle/H;

    iget-boolean p2, p1, Landroidx/lifecycle/H;->b:Z

    if-nez p2, :cond_2

    iget-object p2, p1, Landroidx/lifecycle/H;->a:Lk/r;

    const-string v0, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {p2, v0}, Lk/r;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p1, Landroidx/lifecycle/H;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iput-object v0, p1, Landroidx/lifecycle/H;->c:Landroid/os/Bundle;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/lifecycle/H;->b:Z

    iget-object p1, p1, Landroidx/lifecycle/H;->d:LS4/g;

    invoke-virtual {p1}, LS4/g;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/I;

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Next event must be ON_CREATE, it was "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
