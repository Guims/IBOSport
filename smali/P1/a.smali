.class public final LP1/a;
.super Ljava/lang/Object;

# interfaces
.implements LO1/r;


# static fields
.field public static final b:LI1/i;


# instance fields
.field public final a:LL2/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v0, v1}, LI1/i;->a(Ljava/lang/Object;Ljava/lang/String;)LI1/i;

    move-result-object v0

    sput-object v0, LP1/a;->b:LI1/i;

    return-void
.end method

.method public constructor <init>(LL2/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP1/a;->a:LL2/o;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, LO1/h;

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;IILI1/j;)LO1/q;
    .locals 2

    check-cast p1, LO1/h;

    iget-object p2, p0, LP1/a;->a:LL2/o;

    if-eqz p2, :cond_1

    iget-object p2, p2, LL2/o;->b:Ljava/lang/Object;

    check-cast p2, LO1/o;

    invoke-static {p1}, LO1/p;->a(Ljava/lang/Object;)LO1/p;

    move-result-object p3

    invoke-virtual {p2, p3}, Ld2/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LO1/p;->b:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, LO1/h;

    if-nez v0, :cond_0

    invoke-static {p1}, LO1/p;->a(Ljava/lang/Object;)LO1/p;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ld2/j;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    sget-object p2, LP1/a;->b:LI1/i;

    invoke-virtual {p4, p2}, LI1/j;->c(LI1/i;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance p3, LO1/q;

    new-instance p4, Lcom/bumptech/glide/load/data/k;

    invoke-direct {p4, p1, p2}, Lcom/bumptech/glide/load/data/k;-><init>(LO1/h;I)V

    invoke-direct {p3, p1, p4}, LO1/q;-><init>(LI1/f;Lcom/bumptech/glide/load/data/e;)V

    return-object p3
.end method
