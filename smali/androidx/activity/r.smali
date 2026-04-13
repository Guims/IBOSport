.class public final Landroidx/activity/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/activity/c;


# instance fields
.field public final b:Landroidx/fragment/app/B;

.field public final synthetic q:Landroidx/activity/t;


# direct methods
.method public constructor <init>(Landroidx/activity/t;Landroidx/fragment/app/B;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/r;->q:Landroidx/activity/t;

    iput-object p2, p0, Landroidx/activity/r;->b:Landroidx/fragment/app/B;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/r;->q:Landroidx/activity/t;

    iget-object v1, v0, Landroidx/activity/t;->b:LT4/e;

    iget-object v2, p0, Landroidx/activity/r;->b:Landroidx/fragment/app/B;

    invoke-virtual {v1, v2}, LT4/e;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/activity/t;->c:Landroidx/fragment/app/B;

    invoke-static {v1, v2}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Landroidx/activity/t;->c:Landroidx/fragment/app/B;

    :cond_0
    iget-object v0, v2, Landroidx/fragment/app/B;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v2, Landroidx/fragment/app/B;->c:Le5/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ld5/a;->b()Ljava/lang/Object;

    :cond_1
    iput-object v3, v2, Landroidx/fragment/app/B;->c:Le5/f;

    return-void
.end method
