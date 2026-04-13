.class public final Ln1/d;
.super Ljava/lang/Object;


# static fields
.field public static final c:LD0/c;


# instance fields
.field public final a:Ln1/e;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LD0/c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LD0/c;-><init>(I)V

    sput-object v0, Ln1/d;->c:LD0/c;

    return-void
.end method

.method public constructor <init>(Ln1/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/d;->a:Ln1/e;

    iput p2, p0, Ln1/d;->b:I

    return-void
.end method
