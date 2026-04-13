.class public final Lu5/c;
.super Ljava/lang/Object;

# interfaces
.implements Lm5/e;
.implements Lm5/m0;


# instance fields
.field public final b:Lm5/f;

.field public final synthetic q:Lu5/d;


# direct methods
.method public constructor <init>(Lu5/d;Lm5/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu5/c;->q:Lu5/d;

    iput-object p2, p0, Lu5/c;->b:Lm5/f;

    return-void
.end method


# virtual methods
.method public final a(Lr5/t;I)V
    .locals 1

    iget-object v0, p0, Lu5/c;->b:Lm5/f;

    invoke-virtual {v0, p1, p2}, Lm5/f;->a(Lr5/t;I)V

    return-void
.end method

.method public final getContext()LV4/i;
    .locals 1

    iget-object v0, p0, Lu5/c;->b:Lm5/f;

    iget-object v0, v0, Lm5/f;->t:LV4/i;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;Ld5/l;)LE1/a;
    .locals 2

    check-cast p1, LS4/i;

    new-instance p2, Lu5/b;

    const/4 v0, 0x1

    iget-object v1, p0, Lu5/c;->q:Lu5/d;

    invoke-direct {p2, v1, p0, v0}, Lu5/b;-><init>(Lu5/d;Lu5/c;I)V

    iget-object v0, p0, Lu5/c;->b:Lm5/f;

    invoke-virtual {v0, p1, p2}, Lm5/f;->i(Ljava/lang/Object;Ld5/l;)LE1/a;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lu5/d;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lu5/c;->b:Lm5/f;

    invoke-virtual {v0, p1}, Lm5/f;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lu5/c;->b:Lm5/f;

    invoke-virtual {v0, p1}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
