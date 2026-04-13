.class public final Lr0/f;
.super Ljava/lang/Object;


# static fields
.field public static final d:Lr0/f;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK1/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, LK1/j;->a()Lr0/f;

    move-result-object v0

    sput-object v0, Lr0/f;->d:Lr0/f;

    return-void
.end method

.method public constructor <init>(LK1/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, LK1/j;->a:Z

    iput-boolean v0, p0, Lr0/f;->a:Z

    iget-boolean v0, p1, LK1/j;->b:Z

    iput-boolean v0, p0, Lr0/f;->b:Z

    iget-boolean p1, p1, LK1/j;->c:Z

    iput-boolean p1, p0, Lr0/f;->c:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lr0/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lr0/f;

    iget-boolean v0, p0, Lr0/f;->a:Z

    iget-boolean v1, p1, Lr0/f;->a:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lr0/f;->b:Z

    iget-boolean v1, p1, Lr0/f;->b:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lr0/f;->c:Z

    iget-boolean p1, p1, Lr0/f;->c:Z

    if-ne v0, p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lr0/f;->a:Z

    shl-int/lit8 v0, v0, 0x2

    iget-boolean v1, p0, Lr0/f;->b:Z

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lr0/f;->c:Z

    add-int/2addr v0, v1

    return v0
.end method
