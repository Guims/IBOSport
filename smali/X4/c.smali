.class public abstract LX4/c;
.super LX4/a;


# instance fields
.field private final _context:LV4/i;

.field private transient intercepted:LV4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV4/d;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LV4/d;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, LV4/d;->getContext()LV4/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, LX4/c;-><init>(LV4/d;LV4/i;)V

    return-void
.end method

.method public constructor <init>(LV4/d;LV4/i;)V
    .locals 0

    invoke-direct {p0, p1}, LX4/a;-><init>(LV4/d;)V

    iput-object p2, p0, LX4/c;->_context:LV4/i;

    return-void
.end method


# virtual methods
.method public getContext()LV4/i;
    .locals 1

    iget-object v0, p0, LX4/c;->_context:LV4/i;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final intercepted()LV4/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV4/d;"
        }
    .end annotation

    iget-object v0, p0, LX4/c;->intercepted:LV4/d;

    if-nez v0, :cond_1

    invoke-virtual {p0}, LX4/c;->getContext()LV4/i;

    move-result-object v0

    sget-object v1, LV4/e;->b:LV4/e;

    invoke-interface {v0, v1}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v0

    check-cast v0, LV4/f;

    if-eqz v0, :cond_0

    check-cast v0, Lm5/s;

    new-instance v1, Lr5/h;

    invoke-direct {v1, v0, p0}, Lr5/h;-><init>(Lm5/s;LX4/c;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    iput-object v1, p0, LX4/c;->intercepted:LV4/d;

    return-object v1

    :cond_1
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 4

    iget-object v0, p0, LX4/c;->intercepted:LV4/d;

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {p0}, LX4/c;->getContext()LV4/i;

    move-result-object v1

    sget-object v2, LV4/e;->b:LV4/e;

    invoke-interface {v1, v2}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v1

    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    check-cast v1, LV4/f;

    check-cast v0, Lr5/h;

    sget-object v1, Lr5/h;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lr5/a;->d:LE1/a;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm5/f;

    if-eqz v1, :cond_1

    check-cast v0, Lm5/f;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lm5/f;->n()V

    :cond_2
    sget-object v0, LX4/b;->b:LX4/b;

    iput-object v0, p0, LX4/c;->intercepted:LV4/d;

    return-void
.end method
