.class public final LP1/e;
.super Ljava/lang/Object;

# interfaces
.implements LO1/s;


# virtual methods
.method public final a(LO1/x;)LO1/r;
    .locals 3

    new-instance v0, LO1/z;

    const-class v1, LO1/h;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, LO1/x;->b(Ljava/lang/Class;Ljava/lang/Class;)LO1/r;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LO1/z;-><init>(LO1/r;I)V

    return-object v0
.end method
