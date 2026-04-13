.class public final Lp3/t;
.super Lp3/m;


# instance fields
.field public final b:Ljava/lang/Object;

.field public q:I

.field public final synthetic r:Lp3/u;


# direct methods
.method public constructor <init>(Lp3/u;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/t;->r:Lp3/u;

    sget-object v0, Lp3/u;->y:Ljava/lang/Object;

    invoke-virtual {p1}, Lp3/u;->i()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, p2

    iput-object p1, p0, Lp3/t;->b:Ljava/lang/Object;

    iput p2, p0, Lp3/t;->q:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lp3/t;->q:I

    const/4 v1, -0x1

    iget-object v2, p0, Lp3/t;->b:Ljava/lang/Object;

    iget-object v3, p0, Lp3/t;->r:Lp3/u;

    if-eq v0, v1, :cond_1

    invoke-virtual {v3}, Lp3/u;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lp3/t;->q:I

    invoke-virtual {v3}, Lp3/u;->i()[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v2, v0}, LE5/l;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sget-object v0, Lp3/u;->y:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lp3/u;->d(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lp3/t;->q:I

    return-void
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp3/t;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lp3/t;->r:Lp3/u;

    invoke-virtual {v0}, Lp3/u;->b()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lp3/t;->b:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lp3/t;->a()V

    iget v1, p0, Lp3/t;->q:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lp3/u;->j()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lp3/t;->r:Lp3/u;

    invoke-virtual {v0}, Lp3/u;->b()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lp3/t;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lp3/t;->a()V

    iget v1, p0, Lp3/t;->q:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0, v2, p1}, Lp3/u;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lp3/u;->j()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    iget v2, p0, Lp3/t;->q:I

    invoke-virtual {v0}, Lp3/u;->j()[Ljava/lang/Object;

    move-result-object v0

    aput-object p1, v0, v2

    return-object v1
.end method
