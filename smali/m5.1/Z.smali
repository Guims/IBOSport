.class public final Lm5/Z;
.super Lr5/b;


# instance fields
.field public final b:Lm5/V;

.field public c:Lm5/b0;

.field public final synthetic d:Lm5/a0;

.field public final synthetic e:Lm5/M;


# direct methods
.method public constructor <init>(Lm5/V;Lm5/a0;Lm5/M;)V
    .locals 0

    iput-object p2, p0, Lm5/Z;->d:Lm5/a0;

    iput-object p3, p0, Lm5/Z;->e:Lm5/M;

    invoke-direct {p0}, Lr5/b;-><init>()V

    iput-object p1, p0, Lm5/Z;->b:Lm5/V;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lr5/k;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lm5/Z;->b:Lm5/V;

    if-eqz p2, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lm5/Z;->c:Lm5/b0;

    :goto_1
    if-eqz v1, :cond_4

    sget-object v2, Lr5/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v2, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_4

    iget-object p1, p0, Lm5/Z;->c:Lm5/b0;

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lr5/k;->i(Lr5/k;)V

    return-void

    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_2

    :cond_4
    return-void
.end method

.method public final c(Ljava/lang/Object;)LE1/a;
    .locals 1

    check-cast p1, Lr5/k;

    iget-object p1, p0, Lm5/Z;->d:Lm5/a0;

    invoke-virtual {p1}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lm5/Z;->e:Lm5/M;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lr5/a;->e:LE1/a;

    return-object p1
.end method
