.class public final LI0/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LI0/a;->b:I

    iput p3, p0, LI0/a;->c:I

    iput-object p1, p0, LI0/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/a;->a:Ljava/lang/String;

    iput p2, p0, LI0/a;->c:I

    iput p3, p0, LI0/a;->b:I

    return-void
.end method
