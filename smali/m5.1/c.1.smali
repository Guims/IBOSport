.class public final Lm5/c;
.super Lm5/a;


# instance fields
.field public final s:Ljava/lang/Thread;

.field public final t:Lm5/I;


# direct methods
.method public constructor <init>(LV4/i;Ljava/lang/Thread;Lm5/I;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lm5/a;-><init>(LV4/i;Z)V

    iput-object p2, p0, Lm5/c;->s:Ljava/lang/Thread;

    iput-object p3, p0, Lm5/c;->t:Lm5/I;

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lm5/c;->s:Ljava/lang/Thread;

    invoke-static {p1, v0}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
