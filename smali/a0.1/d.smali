.class public final La0/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/d;->b:Ljava/lang/String;

    iput p2, p0, La0/d;->a:I

    iput p3, p0, La0/d;->c:I

    const/4 p1, -0x1

    iput p1, p0, La0/d;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/d;->b:Ljava/lang/String;

    iput p2, p0, La0/d;->a:I

    iput p3, p0, La0/d;->c:I

    iput p4, p0, La0/d;->d:I

    return-void
.end method
