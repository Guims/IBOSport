.class public Lr5/s;
.super Lm5/a;

# interfaces
.implements LX4/d;


# instance fields
.field public final s:LX4/c;


# direct methods
.method public constructor <init>(LV4/i;LX4/c;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lm5/a;-><init>(LV4/i;Z)V

    iput-object p2, p0, Lr5/s;->s:LX4/c;

    return-void
.end method


# virtual methods
.method public final F()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getCallerFrame()LX4/d;
    .locals 1

    iget-object v0, p0, Lr5/s;->s:LX4/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr5/s;->s:LX4/c;

    invoke-static {v0}, LE5/d;->v(LV4/d;)LV4/d;

    move-result-object v0

    invoke-static {p1}, Lm5/w;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lr5/a;->h(LV4/d;Ljava/lang/Object;)V

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr5/s;->s:LX4/c;

    invoke-static {p1}, Lm5/w;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LV4/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
