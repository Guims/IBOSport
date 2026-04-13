.class public final LU3/g;
.super Ljava/lang/Object;

# interfaces
.implements LR3/g;


# instance fields
.field public a:Z

.field public b:Z

.field public c:LR3/c;

.field public final d:LU3/e;


# direct methods
.method public constructor <init>(LU3/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LU3/g;->a:Z

    iput-boolean v0, p0, LU3/g;->b:Z

    iput-object p1, p0, LU3/g;->d:LU3/e;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/String;)LR3/g;
    .locals 3

    iget-boolean v0, p0, LU3/g;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LU3/g;->a:Z

    iget-object v0, p0, LU3/g;->c:LR3/c;

    iget-boolean v1, p0, LU3/g;->b:Z

    iget-object v2, p0, LU3/g;->d:LU3/e;

    invoke-virtual {v2, v0, p1, v1}, LU3/e;->h(LR3/c;Ljava/lang/Object;Z)V

    return-object p0

    :cond_0
    new-instance p1, LR3/b;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Z)LR3/g;
    .locals 3

    iget-boolean v0, p0, LU3/g;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LU3/g;->a:Z

    iget-object v0, p0, LU3/g;->c:LR3/c;

    iget-boolean v1, p0, LU3/g;->b:Z

    iget-object v2, p0, LU3/g;->d:LU3/e;

    invoke-virtual {v2, v0, p1, v1}, LU3/e;->g(LR3/c;IZ)V

    return-object p0

    :cond_0
    new-instance p1, LR3/b;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
