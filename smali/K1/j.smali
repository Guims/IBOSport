.class public final LK1/j;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


# direct methods
.method public synthetic constructor <init>(ZZZ)V
    .locals 0

    iput-boolean p1, p0, LK1/j;->a:Z

    iput-boolean p2, p0, LK1/j;->b:Z

    iput-boolean p3, p0, LK1/j;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lr0/f;
    .locals 2

    iget-boolean v0, p0, LK1/j;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LK1/j;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LK1/j;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Secondary offload attribute fields are true but primary isFormatSupported is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lr0/f;

    invoke-direct {v0, p0}, Lr0/f;-><init>(LK1/j;)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, LK1/j;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LK1/j;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, LK1/j;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
