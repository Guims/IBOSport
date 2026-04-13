.class public final LZ0/a;
.super LU0/b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LZ0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LY0/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LY0/j;-><init>(I)V

    sput-object v0, LZ0/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method
