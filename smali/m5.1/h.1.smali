.class public final Lm5/h;
.super Lm5/T;


# instance fields
.field public final t:Lm5/f;


# direct methods
.method public constructor <init>(Lm5/f;)V
    .locals 0

    invoke-direct {p0}, Lr5/k;-><init>()V

    iput-object p1, p0, Lm5/h;->t:Lm5/f;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lm5/h;->n(Ljava/lang/Throwable;)V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p0}, Lm5/V;->m()Lm5/a0;

    move-result-object p1

    iget-object v0, p0, Lm5/h;->t:Lm5/f;

    invoke-virtual {v0, p1}, Lm5/f;->p(Lm5/a0;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0}, Lm5/f;->v()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lm5/f;->s:LV4/d;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v1, v2}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lr5/h;

    sget-object v2, Lr5/h;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr5/a;->d:LE1/a;

    invoke-static {v3, v4}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    invoke-virtual {v2, v1, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_3
    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_1
    invoke-virtual {v0, p1}, Lm5/f;->m(Ljava/lang/Throwable;)Z

    invoke-virtual {v0}, Lm5/f;->v()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lm5/f;->n()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_4

    goto :goto_0
.end method
