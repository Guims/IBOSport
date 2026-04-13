.class public final Lp3/Y;
.super Lp3/H;


# static fields
.field public static final t:Lp3/Y;


# instance fields
.field public final transient r:[Ljava/lang/Object;

.field public final transient s:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lp3/Y;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lp3/Y;-><init>(I[Ljava/lang/Object;)V

    sput-object v0, Lp3/Y;->t:Lp3/Y;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lp3/Y;->r:[Ljava/lang/Object;

    iput p1, p0, Lp3/Y;->s:I

    return-void
.end method


# virtual methods
.method public final c(I[Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lp3/Y;->r:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lp3/Y;->s:I

    invoke-static {v0, v1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v2

    return p1
.end method

.method public final d()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp3/Y;->r:[Ljava/lang/Object;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lp3/Y;->s:I

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

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lp3/Y;->s:I

    invoke-static {p1, v0}, LH3/u0;->d(II)V

    iget-object v0, p0, Lp3/Y;->r:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lp3/Y;->s:I

    return v0
.end method
