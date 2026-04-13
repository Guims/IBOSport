.class public final Lp3/v;
.super Lp3/X;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:LD0/c;


# direct methods
.method public constructor <init>(LD0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/v;->b:LD0/c;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lp3/v;->b:LD0/c;

    invoke-virtual {v0, p1, p2}, LD0/c;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lp3/v;

    if-eqz v0, :cond_1

    check-cast p1, Lp3/v;

    iget-object v0, p0, Lp3/v;->b:LD0/c;

    iget-object p1, p1, Lp3/v;->b:LD0/c;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lp3/v;->b:LD0/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp3/v;->b:LD0/c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
