.class public final LE1/e;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# virtual methods
.method public a()LE1/f;
    .locals 2

    new-instance v0, LE1/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v1, p0, LE1/e;->a:I

    iput v1, v0, LE1/f;->a:I

    iget-object v1, p0, LE1/e;->b:Ljava/lang/String;

    iput-object v1, v0, LE1/f;->b:Ljava/lang/String;

    return-object v0
.end method
