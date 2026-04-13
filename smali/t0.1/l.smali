.class public final Lt0/l;
.super Lt0/m;


# instance fields
.field public final w:Lt0/j;

.field public final x:Lcom/bumptech/glide/f;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;Lp3/H;Lt0/r;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    invoke-direct/range {p0 .. p6}, Lt0/m;-><init>(Landroidx/media3/common/Format;Ljava/util/List;Lt0/s;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object p1, p0

    const/4 p4, 0x0

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lt0/b;

    iget-object p2, p2, Lt0/b;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    iget-wide v3, p3, Lt0/r;->e:J

    const-wide/16 p4, 0x0

    cmp-long p2, v3, p4

    const/4 p4, 0x0

    if-gtz p2, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    new-instance v0, Lt0/j;

    const/4 v5, 0x0

    iget-wide v1, p3, Lt0/r;->d:J

    invoke-direct/range {v0 .. v5}, Lt0/j;-><init>(JJLjava/lang/String;)V

    :goto_0
    iput-object v0, p1, Lt0/l;->w:Lt0/j;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p4, Lcom/bumptech/glide/f;

    new-instance v0, Lt0/j;

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    invoke-direct/range {v0 .. v5}, Lt0/j;-><init>(JJLjava/lang/String;)V

    const/16 p2, 0x18

    invoke-direct {p4, p2, v0}, Lcom/bumptech/glide/f;-><init>(ILjava/lang/Object;)V

    :goto_1
    iput-object p4, p1, Lt0/l;->x:Lcom/bumptech/glide/f;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ls0/i;
    .locals 1

    iget-object v0, p0, Lt0/l;->x:Lcom/bumptech/glide/f;

    return-object v0
.end method

.method public final d()Lt0/j;
    .locals 1

    iget-object v0, p0, Lt0/l;->w:Lt0/j;

    return-object v0
.end method
