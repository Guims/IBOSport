.class public final Lq5/p;
.super Ljava/lang/Object;

# interfaces
.implements LV4/d;
.implements LX4/d;


# instance fields
.field public final b:LV4/d;

.field public final q:LV4/i;


# direct methods
.method public constructor <init>(LV4/d;LV4/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq5/p;->b:LV4/d;

    iput-object p2, p0, Lq5/p;->q:LV4/i;

    return-void
.end method


# virtual methods
.method public final getCallerFrame()LX4/d;
    .locals 2

    iget-object v0, p0, Lq5/p;->b:LV4/d;

    instance-of v1, v0, LX4/d;

    if-eqz v1, :cond_0

    check-cast v0, LX4/d;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()LV4/i;
    .locals 1

    iget-object v0, p0, Lq5/p;->q:LV4/i;

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lq5/p;->b:LV4/d;

    invoke-interface {v0, p1}, LV4/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
