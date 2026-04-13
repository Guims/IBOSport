.class public final Lw5/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lw5/d;


# static fields
.field public static final O:Ljava/util/List;

.field public static final P:Ljava/util/List;


# instance fields
.field public final A:Ljava/net/ProxySelector;

.field public final B:Lw5/b;

.field public final C:Ljavax/net/SocketFactory;

.field public final D:Ljavax/net/ssl/SSLSocketFactory;

.field public final E:Ljavax/net/ssl/X509TrustManager;

.field public final F:Ljava/util/List;

.field public final G:Ljava/util/List;

.field public final H:LI5/c;

.field public final I:Lw5/g;

.field public final J:LE2/g;

.field public final K:I

.field public final L:I

.field public final M:I

.field public final N:Le4/c;

.field public final b:LK1/c;

.field public final q:Lv0/f;

.field public final r:Ljava/util/List;

.field public final s:Ljava/util/List;

.field public final t:Lt1/f;

.field public final u:Z

.field public final v:Lw5/b;

.field public final w:Z

.field public final x:Z

.field public final y:Lw5/b;

.field public final z:Lw5/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lw5/z;->t:Lw5/z;

    sget-object v1, Lw5/z;->r:Lw5/z;

    filled-new-array {v0, v1}, [Lw5/z;

    move-result-object v0

    invoke-static {v0}, Lx5/b;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw5/y;->O:Ljava/util/List;

    sget-object v0, Lw5/j;->e:Lw5/j;

    sget-object v1, Lw5/j;->f:Lw5/j;

    filled-new-array {v0, v1}, [Lw5/j;

    move-result-object v0

    invoke-static {v0}, Lx5/b;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lw5/y;->P:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lw5/x;

    invoke-direct {v0}, Lw5/x;-><init>()V

    invoke-direct {p0, v0}, Lw5/y;-><init>(Lw5/x;)V

    return-void
.end method

.method public constructor <init>(Lw5/x;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lw5/x;->a:LK1/c;

    iput-object v0, p0, Lw5/y;->b:LK1/c;

    iget-object v0, p1, Lw5/x;->b:Lv0/f;

    iput-object v0, p0, Lw5/y;->q:Lv0/f;

    iget-object v0, p1, Lw5/x;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lx5/b;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lw5/y;->r:Ljava/util/List;

    iget-object v0, p1, Lw5/x;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lx5/b;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lw5/y;->s:Ljava/util/List;

    iget-object v0, p1, Lw5/x;->e:Lt1/f;

    iput-object v0, p0, Lw5/y;->t:Lt1/f;

    iget-boolean v0, p1, Lw5/x;->f:Z

    iput-boolean v0, p0, Lw5/y;->u:Z

    iget-object v0, p1, Lw5/x;->g:Lw5/b;

    iput-object v0, p0, Lw5/y;->v:Lw5/b;

    iget-boolean v0, p1, Lw5/x;->h:Z

    iput-boolean v0, p0, Lw5/y;->w:Z

    iget-boolean v0, p1, Lw5/x;->i:Z

    iput-boolean v0, p0, Lw5/y;->x:Z

    iget-object v0, p1, Lw5/x;->j:Lw5/b;

    iput-object v0, p0, Lw5/y;->y:Lw5/b;

    iget-object v0, p1, Lw5/x;->k:Lw5/b;

    iput-object v0, p0, Lw5/y;->z:Lw5/b;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LG5/a;->a:LG5/a;

    :goto_0
    iput-object v0, p0, Lw5/y;->A:Ljava/net/ProxySelector;

    iget-object v0, p1, Lw5/x;->l:Lw5/b;

    iput-object v0, p0, Lw5/y;->B:Lw5/b;

    iget-object v0, p1, Lw5/x;->m:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lw5/y;->C:Ljavax/net/SocketFactory;

    iget-object v0, p1, Lw5/x;->n:Ljava/util/List;

    iput-object v0, p0, Lw5/y;->F:Ljava/util/List;

    iget-object v1, p1, Lw5/x;->o:Ljava/util/List;

    iput-object v1, p0, Lw5/y;->G:Ljava/util/List;

    iget-object v1, p1, Lw5/x;->p:LI5/c;

    iput-object v1, p0, Lw5/y;->H:LI5/c;

    iget v1, p1, Lw5/x;->r:I

    iput v1, p0, Lw5/y;->K:I

    iget v1, p1, Lw5/x;->s:I

    iput v1, p0, Lw5/y;->L:I

    iget v1, p1, Lw5/x;->t:I

    iput v1, p0, Lw5/y;->M:I

    new-instance v1, Le4/c;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Le4/c;-><init>(I)V

    iput-object v1, p0, Lw5/y;->N:Le4/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw5/j;

    iget-boolean v2, v2, Lw5/j;->a:Z

    if-eqz v2, :cond_2

    sget-object v0, LE5/n;->a:LE5/n;

    sget-object v0, LE5/n;->a:LE5/n;

    invoke-virtual {v0}, LE5/n;->n()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lw5/y;->E:Ljavax/net/ssl/X509TrustManager;

    sget-object v2, LE5/n;->a:LE5/n;

    invoke-virtual {v2, v0}, LE5/n;->m(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lw5/y;->D:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v2, LE5/n;->a:LE5/n;

    invoke-virtual {v2, v0}, LE5/n;->b(Ljavax/net/ssl/X509TrustManager;)LE2/g;

    move-result-object v0

    iput-object v0, p0, Lw5/y;->J:LE2/g;

    iget-object p1, p1, Lw5/x;->q:Lw5/g;

    iget-object v2, p1, Lw5/g;->b:LE2/g;

    invoke-static {v2, v0}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Lw5/g;

    iget-object p1, p1, Lw5/g;->a:Ljava/util/Set;

    invoke-direct {v2, p1, v0}, Lw5/g;-><init>(Ljava/util/Set;LE2/g;)V

    move-object p1, v2

    :goto_1
    iput-object p1, p0, Lw5/y;->I:Lw5/g;

    goto :goto_3

    :cond_4
    :goto_2
    iput-object v1, p0, Lw5/y;->D:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, Lw5/y;->J:LE2/g;

    iput-object v1, p0, Lw5/y;->E:Ljavax/net/ssl/X509TrustManager;

    sget-object p1, Lw5/g;->c:Lw5/g;

    iput-object p1, p0, Lw5/y;->I:Lw5/g;

    :goto_3
    iget-object p1, p0, Lw5/y;->E:Ljavax/net/ssl/X509TrustManager;

    iget-object v0, p0, Lw5/y;->J:LE2/g;

    iget-object v2, p0, Lw5/y;->D:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, p0, Lw5/y;->s:Ljava/util/List;

    iget-object v4, p0, Lw5/y;->r:Ljava/util/List;

    const-string v5, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    if-eqz v4, :cond_12

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    if-eqz v3, :cond_10

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lw5/y;->F:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw5/j;

    iget-boolean v3, v3, Lw5/j;->a:Z

    if-eqz v3, :cond_6

    if-eqz v2, :cond_9

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "x509TrustManager == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "certificateChainCleaner == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sslSocketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_4
    const-string v1, "Check failed."

    if-nez v2, :cond_e

    if-nez v0, :cond_d

    if-nez p1, :cond_c

    iget-object p1, p0, Lw5/y;->I:Lw5/g;

    sget-object v0, Lw5/g;->c:Lw5/g;

    invoke-static {p1, v0}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :goto_5
    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Null network interceptor: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Null interceptor: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
