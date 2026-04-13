.class public final Lg1/h;
.super Lf1/j;


# instance fields
.field public w:LA3/d;


# virtual methods
.method public final l()V
    .locals 1

    iget-object v0, p0, Lg1/h;->w:LA3/d;

    iget-object v0, v0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lg1/i;

    invoke-virtual {p0}, Lf1/j;->k()V

    iget-object v0, v0, Lg1/i;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
