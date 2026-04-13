.class public abstract Landroidx/datastore/preferences/protobuf/j;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Landroidx/datastore/preferences/protobuf/k;


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract b()I
.end method

.method public abstract c()Z
.end method

.method public abstract d(I)V
.end method

.method public abstract e(I)I
.end method

.method public abstract f()Z
.end method

.method public abstract g()Landroidx/datastore/preferences/protobuf/g;
.end method

.method public abstract h()D
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public abstract k()J
.end method

.method public abstract l()F
.end method

.method public abstract m()I
.end method

.method public abstract n()J
.end method

.method public abstract o()I
.end method

.method public abstract p()J
.end method

.method public abstract q()I
.end method

.method public abstract r()J
.end method

.method public abstract s()Ljava/lang/String;
.end method

.method public abstract t()Ljava/lang/String;
.end method

.method public abstract u()I
.end method

.method public abstract v()I
.end method

.method public abstract w()J
.end method

.method public abstract x(I)Z
.end method

.method public final y()V
    .locals 3

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:I

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->x(I)Z

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroidx/datastore/preferences/protobuf/z;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
