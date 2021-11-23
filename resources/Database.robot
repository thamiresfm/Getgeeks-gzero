*Settings*
Documentation                   Database Helpers

# pip install robotframework-databaselibrary
# pip install psycopg2

Library                     DatabaseLibrary

Resource        ${EXECDIR}/resources/Base.robot

*Keywords*
Connect To Postgress

    Connect To Database     psycopg2
    ...                     bmmismoq
    ...                     bmmismoq
    ...                     mRZ0ARC2Pi1L1q4pNdLkHaXoSSULAyjC
    ...                     fanny.db.elephantsql.com
    ...                     5432


Reset Env

    Execute SQL String     DELETE from public.geeks;
    Execute SQL String     DELETE from public.users;

Insert User
    [Arguments]           ${u}

    ${hashed_pass}          Get Hashed Pass     ${u}[password] 

    ${q}        Set Variable        INSERT INTO public.users (name, email, password_hash, is_geek) values ('${u}[name] ${u}[lastname]', '${u}[email]', '${hashed_pass}', false)

    Execute SQL String          ${q}

Users Seed

    ${user}         Factory User Login
    Insert User     ${user}
