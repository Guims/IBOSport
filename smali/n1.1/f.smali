.class public final Ln1/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:I

.field public final q:Ln1/b;


# direct methods
.method public constructor <init>(ILn1/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln1/f;->b:I

    iput-object p2, p0, Ln1/f;->q:Ln1/b;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ln1/f;

    iget v0, p0, Ln1/f;->b:I

    iget p1, p1, Ln1/f;->b:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
