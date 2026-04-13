.class public final Landroidx/activity/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:Ld5/l;

.field public final synthetic b:Ld5/l;

.field public final synthetic c:Ld5/a;

.field public final synthetic d:Ld5/a;


# direct methods
.method public constructor <init>(Ld5/l;Ld5/l;Ld5/a;Ld5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/p;->a:Ld5/l;

    iput-object p2, p0, Landroidx/activity/p;->b:Ld5/l;

    iput-object p3, p0, Landroidx/activity/p;->c:Ld5/a;

    iput-object p4, p0, Landroidx/activity/p;->d:Ld5/a;

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/p;->d:Ld5/a;

    invoke-interface {v0}, Ld5/a;->b()Ljava/lang/Object;

    return-void
.end method

.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/p;->c:Ld5/a;

    invoke-interface {v0}, Ld5/a;->b()Ljava/lang/Object;

    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/activity/b;

    invoke-direct {v0, p1}, Landroidx/activity/b;-><init>(Landroid/window/BackEvent;)V

    iget-object p1, p0, Landroidx/activity/p;->b:Ld5/l;

    invoke-interface {p1, v0}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/activity/b;

    invoke-direct {v0, p1}, Landroidx/activity/b;-><init>(Landroid/window/BackEvent;)V

    iget-object p1, p0, Landroidx/activity/p;->a:Ld5/l;

    invoke-interface {p1, v0}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
