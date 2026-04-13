.class public final Lp3/e0;
.super Lp3/L;


# static fields
.field public static final x:[Ljava/lang/Object;

.field public static final y:Lp3/e0;


# instance fields
.field public final transient s:[Ljava/lang/Object;

.field public final transient t:I

.field public final transient u:[Ljava/lang/Object;

.field public final transient v:I

.field public final transient w:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    sput-object v5, Lp3/e0;->x:[Ljava/lang/Object;

    new-instance v1, Lp3/e0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Lp3/e0;-><init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    sput-object v1, Lp3/e0;->y:Lp3/e0;

    return-void
.end method

.method public constructor <init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p4, p0, Lp3/e0;->s:[Ljava/lang/Object;

    iput p1, p0, Lp3/e0;->t:I

    iput-object p5, p0, Lp3/e0;->u:[Ljava/lang/Object;

    iput p2, p0, Lp3/e0;->v:I

    iput p3, p0, Lp3/e0;->w:I

    return-void
.end method


# virtual methods
.method public final c(I[Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lp3/e0;->s:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lp3/e0;->w:I

    invoke-static {v0, v1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v2

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lp3/e0;->u:[Ljava/lang/Object;

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lp3/q;->r(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget v3, p0, Lp3/e0;->v:I

    and-int/2addr v2, v3

    aget-object v3, v1, v2

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final d()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp3/e0;->s:[Ljava/lang/Object;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lp3/e0;->w:I

    return v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lp3/e0;->t:I

    return v0
.end method

.method public final k()Lp3/H;
    .locals 2

    iget-object v0, p0, Lp3/e0;->s:[Ljava/lang/Object;

    iget v1, p0, Lp3/e0;->w:I

    invoke-static {v1, v0}, Lp3/H;->h(I[Ljava/lang/Object;)Lp3/Y;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lp3/m0;
    .locals 2

    invoke-virtual {p0}, Lp3/L;->b()Lp3/H;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lp3/H;->l(I)Lp3/F;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lp3/e0;->w:I

    return v0
.end method
