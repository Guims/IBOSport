.class public final Lcom/bumptech/glide/load/data/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/data/f;


# instance fields
.field public final a:LL1/g;


# direct methods
.method public constructor <init>(LL1/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/data/l;->a:LL1/g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;
    .locals 2

    check-cast p1, Ljava/io/InputStream;

    new-instance v0, Lcom/bumptech/glide/load/data/h;

    iget-object v1, p0, Lcom/bumptech/glide/load/data/l;->a:LL1/g;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/data/h;-><init>(Ljava/io/InputStream;LL1/g;)V

    return-object v0
.end method
