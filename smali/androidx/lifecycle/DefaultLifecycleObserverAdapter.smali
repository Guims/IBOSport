.class public final Landroidx/lifecycle/DefaultLifecycleObserverAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final b:Landroidx/lifecycle/d;

.field public final q:Landroidx/lifecycle/p;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/d;Landroidx/lifecycle/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->b:Landroidx/lifecycle/d;

    iput-object p2, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->q:Landroidx/lifecycle/p;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/r;Landroidx/lifecycle/l;)V
    .locals 2

    sget-object v0, Landroidx/lifecycle/e;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->b:Landroidx/lifecycle/d;

    invoke-interface {v0}, Landroidx/lifecycle/d;->b()V

    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->q:Landroidx/lifecycle/p;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/r;Landroidx/lifecycle/l;)V

    :cond_2
    return-void
.end method
