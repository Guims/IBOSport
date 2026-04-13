.class public final Lw0/a;
.super Ljava/lang/Object;

# interfaces
.implements Lw0/q;


# instance fields
.field public final synthetic b:Lw0/c;


# direct methods
.method public constructor <init>(Lw0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/a;->b:Lw0/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lw0/a;->b:Lw0/c;

    iget-object v0, v0, Lw0/c;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroid/net/Uri;LE1/t;Z)Z
    .locals 9

    iget-object p3, p0, Lw0/a;->b:Lw0/c;

    iget-object v0, p3, Lw0/c;->s:Ljava/util/HashMap;

    iget-object v1, p3, Lw0/c;->A:Lw0/i;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p3, Lw0/c;->y:Lw0/l;

    sget v5, Lk0/C;->a:I

    iget-object v1, v1, Lw0/l;->e:Ljava/util/List;

    move v5, v2

    move v6, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw0/k;

    iget-object v7, v7, Lw0/k;->a:Landroid/net/Uri;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw0/b;

    if-eqz v7, :cond_0

    iget-wide v7, v7, Lw0/b;->w:J

    cmp-long v7, v3, v7

    if-gez v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, LE0/k;

    iget-object v3, p3, Lw0/c;->y:Lw0/l;

    iget-object v3, v3, Lw0/l;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3, v6}, LE0/k;-><init>(IIII)V

    iget-object p3, p3, Lw0/c;->r:LE0/m;

    check-cast p3, LE0/j;

    invoke-virtual {p3, v1, p2}, LE0/j;->a(LE0/k;LE1/t;)LE0/l;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p3, p2, LE0/l;->a:I

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw0/b;

    if-eqz p1, :cond_2

    iget-wide p2, p2, LE0/l;->b:J

    invoke-static {p1, p2, p3}, Lw0/b;->a(Lw0/b;J)Z

    :cond_2
    return v2
.end method
